using e3net.BLL;
using e3net.BLL.YhSys;
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
    /// AdvertisingHandler 的摘要说明
    /// </summary>
    public class AdvertisingHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            // context.Response.Write("Hello World");
            HttpReSultMode resultMode = new HttpReSultMode();
            AdvertisingXmlHelper xh = new AdvertisingXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                switch (httpObject["action"].ToString())
                {

                    case "GetByCategory":
                        #region
                        List<Advertising> list = new List<Advertising>();
                        if (httpObject["jsonEntity"]["Category"] != null)
                        {
                            string Category = httpObject["jsonEntity"]["Category"].ToString();
                            list = xh.GetByCategory(Category);
                        }
                        else {
                            list = xh.GetAll();
                        }
                        if (list.Count > 0)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(list, true);
                        }
                        else
                        {
                            resultMode.Code = 0;
                            resultMode.Msg = "没有数据";
                            resultMode.Data = "[]";
                        }
                        #endregion
                        break;


                    case "GetById":
                        #region
                        string IdG = httpObject["jsonEntity"]["Id"].ToString();
                        Advertising modelG = xh.GetItemById(IdG);
                        if (modelG != null)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(modelG, true);
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Msg = "数据不存在";
                            resultMode.Data = "";
                        }
                        #endregion
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