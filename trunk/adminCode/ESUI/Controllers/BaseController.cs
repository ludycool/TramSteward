using e3net.BLL;
using e3net.Mode.RMS;
using e3net.Mode.V_mode;
using e3net.tools;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using System.Web.UI;

namespace ESUI.Controllers
{
    /// <summary>
    /// 基础类
    /// </summary>
    public class BaseController : Controller
    {
        public AdminUserInfo UserData
        {
            set { Session["UserData"] = value; }
            get { return Session["UserData"] as AdminUserInfo; }
        }
        #region  公共方法
        /// <summary>
        /// 获取地址
        /// </summary>
        /// <returns></returns>
        public string RuteUrl()
        {

            return " var BaseUrl = '/" + RouteData.Values["controller"].ToString() + "/';";

        }
        /// <summary>
        /// 操作按键列表
        /// </summary>
        /// <returns></returns>
        public string toolbar()
        {

            string controller = RouteData.Values["controller"].ToString();
            string tool = " var toolbars =[";
            string search = "";
            Manu ManuItem = UserData.ListManus.Find(p => p.manuInfo.URL.Equals(controller));
            if (ManuItem != null)//
            {
                for (int i = 0; i < ManuItem.ListButtons.Count; i++)
                {

                    tool += "{";
                    tool += string.Format("id: '{0}',", ManuItem.ListButtons[i].ValueName);
                    tool += string.Format("text: '{0}',", ManuItem.ListButtons[i].ButtonName);
                    tool += string.Format("iconCls: '{0}',", ManuItem.ListButtons[i].Icon);
                    tool += "handler: function () { " + ManuItem.ListButtons[i].FunctionName + "(); }}";
                    tool += ",'-',";
                }
                tool = tool.Substring(0, tool.Length - 5);
            }
            tool += "];";
            return tool + search;
        }

        public static string GetSql(string sqlSet)
        {
            string[] data = sqlSet.Split('█');
            string sql = " 1=1 ";
            if (!string.IsNullOrEmpty(sqlSet))
            {
                for (int i = 0; i < data.Length; i++)
                {
                    int index = data[i].IndexOf(":");
                    var nameData = data[i].Substring(0, index);

                    string[] name = nameData.Split('_');
                    string value = FilterTools.FilterSpecial(data[i].Substring(index + 1));
                    sql += " and " + GetOP(name[0], name[1], value);

                }
            }
            return sql;
        }
 

        static string GetOP(string name, string op, string values)
        {
            switch (op)
            {
                case "like"://all

                    return name + " like '%" + values + "%' ";
                case "like1":// 前固定

                    return name + " like '" + values + "%' ";
                case "like2"://后固定

                    return name + " like '%" + values + "' ";

                case "eq":

                    return name + " = '" + values + "' ";


                case "lt":

                    return name + " < '" + values + "' ";


                case "le":

                    return name + " <= '" + values + "' ";

                case "gt":

                    return name + " > '" + values + "' ";


                case "ge":

                    return name + " >= '" + values + "' ";


                case "ne":

                    return name + " != '" + values + "' ";
                default:
                    return "";

            }

        }


        #region 获取客户端IP地址



        #endregion
        #endregion
        /// <summary>
        /// 这个方法很变态，小心死循环
        /// </summary>
        /// <param name="context"></param>
        protected override void OnActionExecuting(ActionExecutingContext context)
        {

            bool IsNull = false;
            IsHaveAtion = false;
            string controller = RouteData.Values["controller"].ToString();
            string action = RouteData.Values["action"].ToString();
            if (UserData == null)
            {
                string[] IgnoreP = { "login", "clientuserview", "dictionaryview", "machineryoperationview", "productsview", "ueditor" };//不用登录的页面一定要写在这里，不然会死循环
                if (!IgnoreP.Contains(controller.ToLower()))
                {
                    IsNull = true;
                }
            }
            else
            {
                // string controller =context.ActionDescriptor.ControllerDescriptor.ControllerName

                string[] IgnoreP = { "home", "login" };//不用权限控制的页面一定要写在这里，不然会死循环
                Manu ManuItem = UserData.ListManus.Find(p => p.manuInfo.URL.Equals(controller));
                if (!IgnoreP.Contains(controller.ToLower()) && ManuItem == null)//菜单控制
                {
                    IsNull = true;
                }
                else if (ManuItem != null && ManuItem.ManuAllButton.Find(p => p.FunctionName.Equals(action)) != null)//
                {
                    V_RoleManuButtons IsAtion = ManuItem.ListButtons.Find(p => p.FunctionName.Equals(action));
                    if (IsAtion == null)
                    {
                        IsNull = true;//这个很变态,少了就不能取消操作
                        IsHaveAtion = true;
                    }
                }

            }
            if (IsNull)//非法操作一律返回登录
            {
                context.Result = RedirectToAction("Index", "Login");
            }
            else
            {
                base.OnActionExecuting(context);
            }
        }
        /// <summary>
        /// 标注Ation是否取消
        /// </summary>
        public bool IsHaveAtion
        {
            get;
            set;
        }
        /// <summary>
        /// 这个方法很变态
        /// </summary>
        /// <param name="context"></param>
        protected override void OnResultExecuting(ResultExecutingContext context)
        {
            if (IsHaveAtion)//非法操作取消
            {
                context.Cancel = true;
            }
            else
            {
                base.OnResultExecuting(context);
            }
        }


        #region  自定义JsonResult 转换解决时间格式问题
        /// <summary>
        /// 返回JsonResult
        /// </summary>
        /// <param name="data">数据</param>
        /// <param name="contentType">内容类型</param>
        /// <param name="contentEncoding">内容编码</param>
        /// <param name="behavior">行为</param>
        /// <returns>JsonReuslt</returns>
        protected  JsonResult MyJson(object data, string contentType, System.Text.Encoding contentEncoding, JsonRequestBehavior behavior)
        {
            return new CustomJsonResult
            {
                Data = data,
                ContentType = contentType,
                ContentEncoding = contentEncoding,
                JsonRequestBehavior = behavior,
                FormateStr = "yyyy-MM-dd HH:mm:ss"
            };
        }

        /// <summary>
        /// 返回JsonResult.24        
        /// <param name="data">数据</param>
        /// <param name="behavior">行为</param>
        /// <param name="format">json中dateTime类型的格式</param>
        /// <returns>Json</returns>
        protected JsonResult MyJson(object data, JsonRequestBehavior behavior, string format)
        {
            return new CustomJsonResult
            {
                Data = data,
                JsonRequestBehavior = behavior,
                FormateStr = format
            };
        }
        /// <summary>
        /// 返回JsonResult.24        
        /// <param name="data">数据</param>
        /// <param name="behavior">行为</param>
        /// <param name="format">json中dateTime类型的格式</param>
        /// <returns>Json</returns>
        protected JsonResult MyJson(object data, JsonRequestBehavior behavior)
        {
            return new CustomJsonResult
            {
                Data = data,
                JsonRequestBehavior = behavior,
                FormateStr = "yyyy-MM-dd HH:mm:ss"
            };
        }
        /// <summary>
        /// 返回JsonResult42         /// </summary>
        /// <param name="data">数据</param>
        /// <param name="format">时间数据格式</param>
        /// <returns>Json</returns>
        protected JsonResult MyJson(object data, string format)
        {
            return new CustomJsonResult
            {
                Data = data,
                FormateStr = format
            };
        }
        /// <summary>
        /// 返回JsonResult42         /// </summary>
        /// <param name="data">数据</param>
        /// <returns>Json</returns>
        protected JsonResult MyJson(object data)
        {
            return new CustomJsonResult
            {
                Data = data,
                JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                FormateStr = "yyyy-MM-dd HH:mm:ss"
            };
        }
        #endregion
    }


    /// <summary>
    /// 自定义Json视图
    /// </summary>
    public class CustomJsonResult : JsonResult
    {
        /// <summary>
        /// 格式化字符串
        /// </summary>
        public string FormateStr
        {
            get;
            set;
        }

        /// <summary>
        /// 重写执行视图
        /// </summary>
        /// <param name="context">上下文</param>
        public override void ExecuteResult(ControllerContext context)
        {
            if (context == null)
            {
                throw new ArgumentNullException("context");
            }

            HttpResponseBase response = context.HttpContext.Response;

            if (string.IsNullOrEmpty(this.ContentType))
            {
                response.ContentType = this.ContentType;
            }
            else
            {
                response.ContentType = "application/json";
            }

            if (this.ContentEncoding != null)
            {
                response.ContentEncoding = this.ContentEncoding;
            }

            if (this.Data != null)
            {
                JavaScriptSerializer jss = new JavaScriptSerializer();
                string jsonString = jss.Serialize(Data);
                string p = @"\\/Date\((\d+)\)\\/";
                MatchEvaluator matchEvaluator = new MatchEvaluator(this.ConvertJsonDateToDateString);
                Regex reg = new Regex(p);
                jsonString = reg.Replace(jsonString, matchEvaluator);
                response.Write(jsonString);
            }
        }

        /// <summary>  
        /// 将Json序列化的时间由/Date(1294499956278)转为字符串 .
        /// </summary>  
        /// <param name="m">正则匹配</param>
        /// <returns>格式化后的字符串</returns>
        private string ConvertJsonDateToDateString(Match m)
        {
            string result = string.Empty;
            DateTime dt = new DateTime(1970, 1, 1);
            dt = dt.AddMilliseconds(long.Parse(m.Groups[1].Value));
            dt = dt.ToLocalTime();
            result = dt.ToString(FormateStr);
            return result;
        }
    }

}
