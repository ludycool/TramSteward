using e3net.BLL.TramStewardDB;
using e3net.Mode.HttpView;
using e3net.tools;
using sharonjl.utils;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.appweb.ServerHandle
{
    /// <summary>
    /// ServiceNewHandler 的摘要说明
    /// </summary>
    public class ServiceNewHandler : IHttpHandler
    {

        TS_ServiceNewBiz OPBiz = new TS_ServiceNewBiz();
        public void ProcessRequest(HttpContext context)
        {
            string action = context.Request["action"];
            context.Response.ContentType = "text/plain";
            //  context.Response.Write("Hello World");
            string Id = "";
            int res = 0;//返回结果行数
            HttpReSultMode resultMode = new HttpReSultMode();
            switch (action)
            {

                case "GetData":

                    context.Response.Write(GetData(context));
                    context.Response.End();
                    break;
                case "ClickCount"://点击量
                    Id = FilterTools.FilterSpecial(context.Request["Id"].ToString());
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
                    Id = FilterTools.FilterSpecial(context.Request["Id"].ToString());
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
                    Id = FilterTools.FilterSpecial(context.Request["Id"].ToString());
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
        public string GetData(HttpContext context)
        {
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {

                int pageIndex = int.Parse(context.Request["Pageindex"]);
                int pageSize = int.Parse(context.Request["Pagesize"]);
                DataSet ds;
                #region 条件
                StringBuilder Where = new StringBuilder();
                Where.Append(" isDeleted=0 and States>0");
                if (context.Request["keyWords"] != null)//关键词
                {
                    string KeyWords = FilterTools.FilterSpecial(context.Request["keyWords"].ToString());
                    Where.Append(" and( TName like '%" + KeyWords + "%'");
                    Where.Append(" or  Address like '%" + KeyWords + "%' ");
                    Where.Append(" or  Details like '%" + KeyWords + "%') ");
                }
                if (context.Request["Category"] != null)//分类
                {
                    string Category = FilterTools.FilterSpecial(context.Request["Category"].ToString());
                    Where.Append(" and  ( Category like '" + Category + "%')");
                }
                #endregion
                #region 有 坐标 有距离
                if (context.Request["Lng"] != null && context.Request["Lat"] != null)//传有坐标按距离排序
                {
                    string Longitude = context.Request["Lng"].ToString();
                    string Latitude = context.Request["Lat"].ToString();
                    //分页 按距离排序
                    string geohashWhere = Geohash.getsqlGeoHash(5, Latitude, Longitude, "geohash");
                    string sqlWhere = Where.ToString() + " and " + geohashWhere;//条件加geohash

                    ds = OPBiz.GetPagingOrderByLL(sqlWhere, pageIndex, pageSize, Longitude, Latitude);

                }
                else //简单分页无排序
                {
                    ds = OPBiz.GetPagingDataSet(Where.ToString(), pageIndex, pageSize, "CreateTime desc");
                }
                #endregion
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
            }
            catch (Exception ex)
            {
                resultMode.Code = -11;
                resultMode.Data = ex.ToString();
            }
            string result = JsonHelper.ToJson(resultMode, true);
            return result;
            ;
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