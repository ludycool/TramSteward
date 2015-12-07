﻿using e3net.BLL.TramStewardDB;
using e3net.Mode.HttpView;
using e3net.Mode.TramStewardDB;
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

        // 请求例子 /httpSever/TS_ClientUserHandler.ashx?json={"jsonEntity":{"UserName":"admin","Pwd":"123456"},"action":"Login"}
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
                switch (httpObject["action"].ToString())
                {

                    case "Register":

                        var registermql = TS_ClientUserSet.SelectAll().Where(TS_ClientUserSet.UserName.Equal(httpObject["jsonEntity"]["UserName"].ToString()));
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
                            Rmodel.Category = "";
                            OPBiz.Add(Rmodel);

                            resultMode.Code = 1;
                            resultMode.Msg = "注册成功";
                            resultMode.Data = Rmodel.Id.ToString();
                        }

                        break;
                    case "Login":
                        string UserName = httpObject["jsonEntity"]["UserName"].ToString();
                        string Pwd = httpObject["jsonEntity"]["Pwd"].ToString();
                        var Loginmql = TS_ClientUserSet.SelectAll().Where(TS_ClientUserSet.UserName.Equal(UserName).And(TS_ClientUserSet.Pwd.Equal(Pwd)));
                        TS_ClientUser Loginmodel = OPBiz.GetEntity(Loginmql);
                        if (Loginmodel != null)
                        {
                            resultMode.Code = 1;
                            resultMode.Msg = "获取成功";
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
                        string CUserName = httpObject["jsonEntity"]["UserName"].ToString();
                        string CPwd = httpObject["jsonEntity"]["Pwd"].ToString();
                        var mqlG = TS_ClientUserSet.SelectAll().Where(TS_ClientUserSet.UserName.Equal(CUserName));
                        TS_ClientUser modelG = OPBiz.GetEntity(mqlG);
                        if (modelG != null)
                        {
                            modelG.Pwd = CPwd;
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
                        #region
                        TS_ClientUser Rmodel2 = JsonHelper.FromJson<TS_ClientUser>(httpObject["jsonEntity"].ToString());
                        Rmodel2.WhereExpression = TS_ClientUserSet.Id.Equal(Rmodel2.Id);
                        Rmodel2.UpdateTime = DateTime.Now;
                        Rmodel2.LocationUpdateTime = DateTime.Now;
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
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}