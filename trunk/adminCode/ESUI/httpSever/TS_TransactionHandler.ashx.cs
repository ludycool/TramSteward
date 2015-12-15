using e3net.BLL.TramStewardDB;
using e3net.common.SysMode;
using e3net.Mode.HttpView;
using e3net.Mode.TramStewardDB;
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
    /// TS_TransactionHandler 的摘要说明
    /// </summary>
    public class TS_TransactionHandler : IHttpHandler
    {

        TS_TransactionBiz VOPBiz = new TS_TransactionBiz();
        // 请求例子  /httpSever/TS_TransactionHandler.ashx?json={"jsonEntity":{"Category":"09","Longitude":"110.22587","Latitude":"25.272585"},"pageIndex":"1","pageSize":"20","action":"GetByCategory"}
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            // context.Response.Write("Hello World");
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                switch (httpObject["action"].ToString())
                {
                    case "GetById":
                        #region
                        string IdG = httpObject["jsonEntity"]["Id"].ToString();
                        var mqlG = TS_TransactionSet.SelectAll().Where(TS_TransactionSet.Id.Equal(IdG));
                        TS_Transaction modelG = VOPBiz.GetEntity(mqlG);
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

                    case "GetByCategory":
                        this.GetByCategory(context, httpObject, resultMode);
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
                string KeyWords = httpObject["jsonEntity"]["KeyWords"].ToString();
                Where.Append(" and( Title like '%" + KeyWords + "%'");
                Where.Append(" or  Address like '%" + KeyWords + "%') ");
            }
            if (httpObject["jsonEntity"]["Category"] != null)//分类
            {
                Where.Append(" and  ( Category like '" + httpObject["jsonEntity"]["Category"] + "%')");

            }
            if (httpObject["jsonEntity"]["MinPrice"] != null)//最低价
            {
                Where.Append(" and  ( Price >" + httpObject["jsonEntity"]["MinPrice"] + ")");

            }
            if (httpObject["jsonEntity"]["MaxPrice"] != null)//最高价
            {
                Where.Append(" and  ( Price <" + httpObject["jsonEntity"]["MaxPrice"] + ")");

            }
            if (httpObject["jsonEntity"]["ProvinceCode"] != null)//省
            {
                Where.Append(" and  ( ProvinceCode like '" + httpObject["jsonEntity"]["ProvinceCode"] + "%')");

            }
            if (httpObject["jsonEntity"]["CityCode"] != null)//城市
            {
                Where.Append(" and  ( CityCode like '" + httpObject["jsonEntity"]["CityCode"] + "%')");

            }
            if (httpObject["jsonEntity"]["AreaCode"] != null)//区
            {
                Where.Append(" and  ( AreaCode like '" + httpObject["jsonEntity"]["AreaCode"] + "%')");

            }
            #endregion
            #region 有 坐标 有距离
            if (httpObject["jsonEntity"]["Longitude"] != null && httpObject["jsonEntity"]["Latitude"] != null)//传有坐标按距离排序
            {
                string Longitude = httpObject["jsonEntity"]["Longitude"].ToString();
                string Latitude = httpObject["jsonEntity"]["Latitude"].ToString();
                if (httpObject["jsonEntity"]["minKM"] != null && httpObject["jsonEntity"]["maxKM"] != null)//有最小最大距离约定，按距离排序， 不分页
                {
                    float minKM = float.Parse(httpObject["jsonEntity"]["minKM"].ToString());
                    float maxKM = float.Parse(httpObject["jsonEntity"]["maxKM"].ToString());
                    ds = VOPBiz.GetByDistancesOrderByLL(Where.ToString(), minKM, maxKM, Longitude, Latitude);
                }
                else //分页 按距离排序
                {
                    ds = VOPBiz.GetPagingOrderByLL(Where.ToString(), pageIndex, pageSize, Longitude, Latitude);
                }
            }
            else //简单分页无排序
            {
                ds = VOPBiz.GetPagingDataSet(Where.ToString(), pageIndex, pageSize, "CreateTime desc");
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