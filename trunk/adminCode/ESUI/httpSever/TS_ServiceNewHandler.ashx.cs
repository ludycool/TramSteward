using e3net.BLL.TramStewardDB;
using e3net.Mode.HttpView;
using e3net.Mode.TramStewardDB;
using e3net.tools;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.httpSever
{
    /// <summary>
    /// TS_ServiceNewNewHandler 的摘要说明
    /// </summary>
    public class TS_ServiceNewHandler : IHttpHandler
    {

        TS_ServiceNewBiz OPBiz = new TS_ServiceNewBiz();
        // 请求例子  /httpSever/TS_ServiceNewHandler.ashx?json={"jsonEntity":{"Category":"01","CityCode":"4502"},"pageIndex":"1","pageSize":"20","action":"GetByCategory"}
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
                switch (httpObject["action"].ToString())
                {

                    case "GetByCategory":
                        this.GetByCategory(context, httpObject, resultMode);

                        break;


                    case "GetById":
                        #region
                         Id= FilterTools.FilterSpecial(httpObject["jsonEntity"]["Id"].ToString());
                        var mqlG = TS_ServiceNewSet.SelectAll().Where(TS_ServiceNewSet.Id.Equal(Id));
                        TS_ServiceNew modelG = OPBiz.GetEntity(mqlG);
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
                    case "ClickCount"://点击量
                        Id = FilterTools.FilterSpecial(httpObject["jsonEntity"]["Id"].ToString());
                        res = OPBiz.SetCout("Id", Id, "Clicks");
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
                    case "CallCount"://呼叫量加1
                        Id = FilterTools.FilterSpecial(httpObject["jsonEntity"]["Id"].ToString());
                        res = OPBiz.SetCout("Id", Id, "CallCount");
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

        /// <summary>
        /// 分类分页获取
        /// </summary>
        /// <param name="context"></param>
        /// <param name="httpObject"></param>
        /// <param name="resultMode"></param>
        private void GetByCategory(HttpContext context, JObject httpObject, HttpReSultMode resultMode)
        {
            int pageIndex = 1;
            int pageSize = 10000;
            DataSet ds;
            #region
            if (httpObject["pageIndex"] != null)
            {
                pageIndex = int.Parse(httpObject["pageIndex"].ToString());
            }

            if (httpObject["pageSize"] != null)
            {
                pageSize = int.Parse(httpObject["pageSize"].ToString());
            }
            #region 条件
            StringBuilder Where = new StringBuilder();
            Where.Append(" isDeleted=0 ");
            if (httpObject["jsonEntity"]["KeyWords"] != null)//关键词
            {
                string KeyWords = FilterTools.FilterSpecial(httpObject["jsonEntity"]["KeyWords"].ToString());
                Where.Append(" and( TName like '%" + KeyWords + "%'");
                Where.Append(" or  Address like '%" + KeyWords + "%') ");
            }
            if (httpObject["jsonEntity"]["Category"] != null)//分类
            {
                string Category = FilterTools.FilterSpecial(httpObject["jsonEntity"]["Category"].ToString());
                Where.Append(" and  ( Category like '" + Category + "%')");

            }
            if (httpObject["jsonEntity"]["ProvinceCode"] != null)//省
            {
                string ProvinceCode = FilterTools.FilterSpecial(httpObject["jsonEntity"]["ProvinceCode"].ToString());
                Where.Append(" and  ( ProvinceCode like '" + ProvinceCode + "%')");

            }
            if (httpObject["jsonEntity"]["CityCode"] != null)//城市
            {
                string CityCode = FilterTools.FilterSpecial(httpObject["jsonEntity"]["CityCode"].ToString());
                Where.Append(" and  ( CityCode like '" + CityCode + "%')");

            }
            if (httpObject["jsonEntity"]["AreaCode"] != null)//区
            {
                string AreaCode = FilterTools.FilterSpecial(httpObject["jsonEntity"]["AreaCode"].ToString());
                Where.Append(" and  ( AreaCode like '" + AreaCode + "%')");

            }
            #endregion
            
                ds = OPBiz.GetPagingDataSet(Where.ToString(), pageIndex, pageSize, "CreateTime desc");

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