using e3net.BLL.TramStewardDB;
using e3net.Mode.HttpView;
using e3net.Mode.TramStewardDB;
using e3net.tools;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.httpSever
{
    /// <summary>
    /// TS_ClientUserHandler 的摘要说明
    /// </summary>
    public class TS_ClientUserHandler : IHttpHandler
    {

        TS_ClientUserBiz OPBiz = new TS_ClientUserBiz();

        // 请求例子 /httpSever/TS_ClientUserHandler.ashx?json={"jsonEntity":{"UserName":"ludycool","Pwd":"123456"},"action":"Login"}
        // 请求例子  /httpSever/TS_ClientUserHandler.ashx?json={"jsonEntity":{"UserName":"ludycool","Pwd":"123456"},"action":"Register"}
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            // context.Response.Write("Hello World");
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                // JObject ObjectParameter = (JObject)JsonConvert.DeserializeObject(httpObject["jsonEntity"].ObjToStr());
                string jsonData = httpObject["jsonEntity"].ToString();
                string UserName = "";
                string Pwd = "";
                switch (httpObject["action"].ToString())
                {

                    case "Register":

                        UserName = FilterTools.FilterSpecial(httpObject["jsonEntity"]["UserName"].ToString());
                        var registermql = TS_ClientUserSet.SelectAll().Where(TS_ClientUserSet.UserName.Equal(UserName));
                        TS_ClientUser registermodel = OPBiz.GetEntity(registermql);
                        if (registermodel != null)
                        {
                            resultMode.Code = -13;
                            resultMode.Msg = "用户已经存在";
                            resultMode.Data = "";
                        }
                        else
                        {
                            TS_ClientUser Rmodel = JsonHelper.FromJson<TS_ClientUser>(jsonData);
                            Rmodel.Id = Guid.NewGuid();
                            Rmodel.AddTime = DateTime.Now;
                            Rmodel.UpdateTime = DateTime.Now;
                            Rmodel.LocationUpdateTime = DateTime.Now;
                            Rmodel.isDeleted = false;
                            Rmodel.States = 0;
                            OPBiz.Add(Rmodel);

                            resultMode.Code = 11;
                            resultMode.Msg = "注册成功";
                            resultMode.Data = Rmodel.Id.ToString();
                        }

                        break;
                    case "Login":
                         UserName = FilterTools.FilterSpecial(httpObject["jsonEntity"]["UserName"].ToString());
                         Pwd = httpObject["jsonEntity"]["Pwd"].ToString();
                        var Loginmql = TS_ClientUserSet.SelectAll().Where(TS_ClientUserSet.UserName.Equal(UserName).And(TS_ClientUserSet.Pwd.Equal(Pwd)));
                        TS_ClientUser Loginmodel = OPBiz.GetEntity(Loginmql);
                        if (Loginmodel != null)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "登录成功";
                            resultMode.Data = JsonHelper.ToJson(Loginmodel, true);
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Msg = "用户或密码错误";
                            resultMode.Data = "";

                        }
                        break;
                    case "ChangePassword":
                        UserName = FilterTools.FilterSpecial(httpObject["jsonEntity"]["UserName"].ToString());
                        Pwd = httpObject["jsonEntity"]["Pwd"].ToString();
                        var mqlG = TS_ClientUserSet.SelectAll().Where(TS_ClientUserSet.UserName.Equal(UserName));
                        TS_ClientUser modelG = OPBiz.GetEntity(mqlG);
                        if (modelG != null)
                        {
                            modelG.Pwd = Pwd;
                            modelG.UpdateTime = DateTime.Now;
                            modelG.WhereExpression = TS_ClientUserSet.Id.Equal(modelG.Id);
                            if (OPBiz.Update(modelG) > 0)
                            {
                                resultMode.Code = 11;
                                resultMode.Msg = "修改密码成功";
                                resultMode.Data = "";
                            }
                            else
                            {
                                resultMode.Code = -13;
                                resultMode.Msg = "修改失败";
                                resultMode.Data = "";
                            }

                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Msg = "用户不存在";
                            resultMode.Data = "";
                        }


                        break;

                    case "update":
                        this.update(context, httpObject);
                        break;
                }
            }
            catch (Exception ex)
            {
                resultMode.Code = -1;
                resultMode.Data = ex.ToString();
            }
            context.Response.Write(JsonHelper.ToJson(resultMode, true));
            context.Response.End();
        }

        private void update(HttpContext context, JObject httpObject)
        {
            #region
            HttpReSultMode resultMode = new HttpReSultMode();
            TS_ClientUser Rmodel2 = JsonHelper.FromJson<TS_ClientUser>(httpObject["jsonEntity"].ToString());

              var Loginmql = TS_ClientUserSet.SelectAll().Where(TS_ClientUserSet.Id.Equal(Rmodel2.Id));
                        TS_ClientUser Loginmodel = OPBiz.GetEntity(Loginmql);
            
            Rmodel2.WhereExpression = TS_ClientUserSet.Id.Equal(Rmodel2.Id);
            Rmodel2.UpdateTime = DateTime.Now;
            Rmodel2.LocationUpdateTime = DateTime.Now;
            Rmodel2.isDeleted = Loginmodel.isDeleted;;
            Rmodel2.isValid = Loginmodel.isValid;
            Rmodel2.States = Loginmodel.States;
            if (OPBiz.Update(Rmodel2) > 0)
            {
                resultMode.Code = 11;
                resultMode.Msg = "更新成功";
                resultMode.Data = "";
            }
            else
            {
                resultMode.Code = -13;
                resultMode.Msg = "更新失败";
                resultMode.Data = "";
            }
            #endregion
            context.Response.Write(JsonHelper.ToJson(resultMode, true));
            context.Response.End();
        
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}