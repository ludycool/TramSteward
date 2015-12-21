using e3net.BLL;
using e3net.BLL.YhSys;
using e3net.Mode;
using e3net.Mode.HttpView;
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
    /// AppVersionHandler 的摘要说明
    /// </summary>
    public class AppVersionHandler : IHttpHandler
    {
        //请求实例 /httpSever/AppVersionHandler.ashx?json={"jsonEntity":{"Version":"01.01.01"},"action":"GetNewVersion"}
        public void ProcessRequest(HttpContext context)
        {
            Sys_AppVerSionBiz OPBiz = new Sys_AppVerSionBiz();
            HttpReSultMode resultMode = new HttpReSultMode();
            context.Response.ContentType = "text/plain";
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                string jsonData = httpObject["jsonEntity"].ToString();
                switch (httpObject["action"].ToString())
                {

                    case "GetNewVersion"://最新的版本号

                        if (httpObject["jsonEntity"]["Version"] != null)
                        {
                            int VersionOld = int.Parse(httpObject["jsonEntity"]["Version"].ToString().Replace(".", ""));

                            var Rmodel = OPBiz.GetModelByWhere("", "Version desc");
                            int verNew = int.Parse(Rmodel.Version.Replace(".", ""));
                            if (verNew > VersionOld)
                            {
                                resultMode.Code = 11;
                                resultMode.Msg = "有新版本";
                                resultMode.Data = JsonHelper.ToJson(Rmodel, true);
                            }
                            else
                            {
                                resultMode.Code = 0;
                                resultMode.Msg = "没有新版本";
                                resultMode.Data = "{}";
                            }
                        }
                        else
                        {
                            var Rmodel = OPBiz.GetModelByWhere("", "Version desc");
                            resultMode.Code = 11;
                            resultMode.Msg = "新版本";
                            resultMode.Data = JsonHelper.ToJson(Rmodel, true);

                        }
                        break;
                }
            }
            catch (Exception ex)
            {
                resultMode.Code = -11;
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