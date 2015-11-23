using e3net.BLL;
using e3net.Mode.RMS;
using e3net.Mode.V_mode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
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
            bool NoSearh = true;
            if (ManuItem != null)//
            {
                for (int i = 0; i < ManuItem.ListButtons.Count; i++)
                {
                    if (ManuItem.ListButtons[i].FunctionName.Equals("Search"))//搜索是一个div
                    {
                        NoSearh = false;
                    }
                    else
                    {
                        tool += "{";
                        tool += string.Format("id: '{0}',", ManuItem.ListButtons[i].ValueName);
                        tool += string.Format("text: '{0}',", ManuItem.ListButtons[i].ButtonName);
                        tool += string.Format("iconCls: '{0}',", ManuItem.ListButtons[i].Icon);
                        tool += "handler: function () { " + ManuItem.ListButtons[i].FunctionName + "(); }}";
                        tool += ",'-',";
                    }
                }
                tool = tool.Substring(0, tool.Length - 5);
                if (NoSearh)
                {
                    search = "  $(\"#DivSearh\").attr(\"style\", \"display:none;\");"
                        ;
                }

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

                    string value = data[i].Substring(index + 1);

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


    }

}
