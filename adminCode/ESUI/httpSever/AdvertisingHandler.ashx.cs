using e3net.BLL;
using e3net.BLL.YhSys;
using e3net.Mode;
using e3net.Mode.HttpView;
using e3net.tools;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
            //  /httpSever/AdvertisingHandler.ashx?json={"jsonEntity":{"Category":"0201"},"action":"GetByCategory"}
            HttpReSultMode resultMode = new HttpReSultMode();
            Sys_AdvertisingBiz OPBiz = new Sys_AdvertisingBiz();
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                switch (httpObject["action"].ToString())
                {

                    case "GetByCategory":
                        #region
                        List<Sys_Advertising> list = new List<Sys_Advertising>();
                        if (httpObject["jsonEntity"]["Category"] != null)//分类
                        {
                            string Category = FilterTools.FilterSpecial(httpObject["jsonEntity"]["Category"].ToString());
                            var sqlm = Sys_AdvertisingSet.SelectAll().Where(Sys_AdvertisingSet.Category.Equal(Category).And(Sys_AdvertisingSet.States.Equal(1)).And(Sys_AdvertisingSet.isDeleted.Equal(0)));
                            list = OPBiz.GetEntities(sqlm);
                        }
                        else
                        {

                            var sqlm = Sys_AdvertisingSet.SelectAll().Where(Sys_AdvertisingSet.States.Equal(1).And(Sys_AdvertisingSet.isDeleted.Equal(0)));
                            list = OPBiz.GetEntities(sqlm);
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
                        var sqlO = Sys_AdvertisingSet.SelectAll().Where(Sys_AdvertisingSet.Id.Equal(IdG));
                        Sys_Advertising modelG = OPBiz.GetEntity(sqlO);
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