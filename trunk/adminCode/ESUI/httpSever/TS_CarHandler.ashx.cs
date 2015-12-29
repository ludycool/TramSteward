using e3net.BLL.TramStewardDB;
using e3net.common.SysMode;
using e3net.Mode.HttpView;
using e3net.Mode.TramStewardDB;
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
    /// TS_CarHandler 的摘要说明
    /// </summary>
    public class TS_CarHandler : IHttpHandler
    {

        TS_CarBiz OPBiz = new TS_CarBiz();
        // 请求例子  /httpSever/TS_CarHandler.ashx?json={"jsonEntity":{"Category":"08","ShopId":"d6807c66-c4fb-4350-83fd-afd19cb82693"},"pageIndex":"1","pageSize":"20","action":"Searh"}
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            // context.Response.Write("Hello World");
            HttpReSultMode resultMode = new HttpReSultMode();
            string Id = "";
            int res = 0;//返回结果行数
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                int pageIndex = 1;
                int pageSize = 10000;
                //string Longitude="";
                //string Latitude="";
                string ShopId = "";
                DataSet ds = new DataSet();
                switch (httpObject["action"].ToString())
                {

                    case "Searh"://根据店铺分类分页获取
                        #region
                        if (httpObject["pageIndex"] != null)
                        {
                            pageIndex = int.Parse(httpObject["pageIndex"].ToString());
                        }

                        if (httpObject["pageSize"] != null)
                        {
                            pageSize = int.Parse(httpObject["pageSize"].ToString());
                        }
                         ShopId =FilterTools.FilterSpecial( httpObject["jsonEntity"]["ShopId"].ToString());
                         string Where = " ShopId='" + ShopId + "' and (isDeleted=0) ";
                         if (httpObject["jsonEntity"]["Category"] != null)
                         {
                             string Category = FilterTools.FilterSpecial(httpObject["jsonEntity"]["Category"].ToString());
                             Where += " and  ( Category like '" + Category + "%')";

                         }
                         ds = OPBiz.GetPagingDataSet(Where, pageIndex, pageSize, " CreateTime desc ");
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
                       Id = FilterTools.FilterSpecial(httpObject["jsonEntity"]["Id"].ToString());
                        var mqlG = TS_CarSet.SelectAll().Where(TS_CarSet.Id.Equal(Id));
                        TS_Car modelG = OPBiz.GetEntity(mqlG);
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
                    case "PraiseCount"://点赞量加1
                        Id = FilterTools.FilterSpecial(httpObject["jsonEntity"]["Id"].ToString());
                        res = OPBiz.SetCout("Id", Id, "Praises");
                        if (res > 0)
                        {
                            resultMode.Code = 11;
                            resultMode.Data = res.ToString();
                            resultMode.Msg = "统计成功";
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Data = "0";
                            resultMode.Msg = "统计失败！";
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