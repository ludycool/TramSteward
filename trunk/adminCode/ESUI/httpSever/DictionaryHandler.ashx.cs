using e3net.BLL;
using e3net.Mode;
using e3net.Mode.HttpView;
using e3net.tools;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.httpSever
{
    /// <summary>
    /// DictionaryHandler 的摘要说明
    /// </summary>
    public class DictionaryHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            Sys_DictionaryBiz OPBiz = new Sys_DictionaryBiz();

            // 请求例子  /httpSever/DictionaryHandler.ashx?json={"jsonEntity":{"Category":"01"},"action":"GetCategoryByParent"}

            context.Response.ContentType = "text/plain";
            // context.Response.Write("Hello World");
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                List<Sys_Dictionary> ds = new List<Sys_Dictionary>();
                switch (httpObject["action"].ToString())
                {

                    case "GetCategoryByParent":
                        string Category = httpObject["jsonEntity"]["Category"].ToString();
                        ds = OPBiz.GetAllSonbyValueName(Category);
                        if (ds != null && ds.Count > 0)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(ds, true);
                        }
                        else
                        {
                            resultMode.Code = 0;
                            resultMode.Msg = "没有数据";
                            resultMode.Data = "[]";
                        }
                        break;
                    case "GetSonbyParentId":
                        string ParentId = httpObject["jsonEntity"]["ParentId"].ToString();
                        ds = OPBiz.GetSonbyParentId(ParentId);
                        if (ds != null && ds.Count > 0)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(ds, true);
                        }
                        else
                        {
                            resultMode.Code = 0;
                            resultMode.Msg = "没有数据";
                            resultMode.Data = "[]";
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