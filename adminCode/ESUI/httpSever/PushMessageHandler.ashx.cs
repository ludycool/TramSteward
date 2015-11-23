using e3net.BLL.YhSys;
using e3net.Mode.HttpView;
using e3net.Mode.YhSys;
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
    /// PushMessageHandler 的摘要说明
    /// </summary>
    public class PushMessageHandler : IHttpHandler
    {
        // /httpSever/PushMessageHandler.ashx?json={"jsonEntity":{"Category":"03","Id":"865128ccad174f32a8f987f6bcd5be7d"},"pageIndex":"1","pageSize":"20","action":"GetPushMessage"}
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            PushMessageBiz OPBiz = new PushMessageBiz();
            // context.Response.Write("Hello World");
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                int pageIndex = 1;
                int pageSize = 10000;
                switch (httpObject["action"].ToString())
                {

                    case "GetPushMessage":
                        #region
                        if (httpObject["pageIndex"] != null)
                        {
                            pageIndex = int.Parse(httpObject["pageIndex"].ToString());
                        }
                        if (httpObject["pageSize"] != null)
                        {
                            pageSize = int.Parse(httpObject["pageSize"].ToString());
                        }

                        string Tags = httpObject["jsonEntity"]["Category"].ToString();
                            string Alias = httpObject["jsonEntity"]["Id"].ToString();
                            var Where = PushMessageSet.SelectAll().Where(PushMessageSet.Tags.Equal(Tags).Or(PushMessageSet.Alias.Equal(Alias)));

                            DataSet ds = OPBiz.GetPagingDataSet(Where, pageIndex, pageSize, " AddTime desc ");
                        if (ds != null && ds.Tables[0].Rows.Count > 0)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(ds.Tables[0], true);
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
                        var mqlG = PushMessageSet.SelectAll().Where(PushMessageSet.Id.Equal(IdG));
                        PushMessage modelG = OPBiz.GetEntity(mqlG);
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