using e3net.BLL;
using e3net.Mode;
using e3net.Mode.HttpView;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.httpSever
{
    /// <summary>
    /// ParameterHandler 的摘要说明
    /// </summary>
    public class ParameterHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            HttpReSultMode resultMode = new HttpReSultMode();
            ParameterXmlHelper xh = new ParameterXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));
            context.Response.ContentType = "text/plain";
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                string jsonData = httpObject["jsonEntity"].ToString();
                switch (httpObject["action"].ToString())
                {
                    case "GetExemptionOfFame"://获取免责声明
                        string Id = "5b299851-8ceb-4147-851c-7b4566b473cc";
                        Parameter Rmodel2 = xh.GetItemBykeys(Id);
                        if (Rmodel2 != null)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(Rmodel2, true);
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Msg = "无数据";
                            resultMode.Data = "{}";
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