using e3net.BLL.TramStewardDB;
using e3net.common.SysMode;
using e3net.Mode.HttpView;
using e3net.Mode.TramStewardDB;
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
    /// TS_ShopHandler 的摘要说明
    /// </summary>
    public class TS_ShopHandler : IHttpHandler
    {


        TS_ShopBiz VOPBiz = new TS_ShopBiz();
        // 请求例子  /httpSever/TS_ShopHandler.ashx?json={"jsonEntity":{"Category":"05","Longitude":"110.22587","Latitude":"25.272585"},"pageIndex":"1","pageSize":"20","action":"GetByCategory"}
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            // context.Response.Write("Hello World");
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                int pageIndex = 1;
                int pageSize = 10000;
                switch (httpObject["action"].ToString())
                {

                    case "GetByCategory":
                        #region
                        if (httpObject["pageIndex"] != null)
                        {
                            pageIndex = int.Parse(httpObject["pageIndex"].ToString());
                        }

                        if (httpObject["pageSize"] != null)
                        {
                            pageSize = int.Parse(httpObject["pageSize"].ToString());
                        }
                        string Longitude = httpObject["jsonEntity"]["Longitude"].ToString();
                        string Latitude = httpObject["jsonEntity"]["Latitude"].ToString();
                        string Category = httpObject["jsonEntity"]["Category"].ToString();
                        DataSet ds = VOPBiz.GetPagingOrderByLL(" Category like '" + Category + "%'", pageIndex, pageSize, Longitude, Latitude);
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
                        var mqlG = TS_ShopSet.SelectAll().Where(TS_ShopSet.Id.Equal(IdG));
                        TS_Shop modelG = VOPBiz.GetEntity(mqlG);
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

                    case "SearhByKeyWords":
                        #region
                        string KeyWords = httpObject["jsonEntity"]["KeyWords"].ToString();
                        if (httpObject["pageIndex"] != null)
                        {
                            pageIndex = int.Parse(httpObject["pageIndex"].ToString());
                        }

                        if (httpObject["pageSize"] != null)
                        {
                            pageSize = int.Parse(httpObject["pageSize"].ToString());
                        }
                        PageClass pc = new PageClass();
                        pc.sys_Fields = "*";
                        pc.sys_Key = "Id";
                        pc.sys_PageIndex = pageIndex;
                        pc.sys_PageSize = pageSize;
                        pc.sys_Table = "v_TS_Shop";
                        pc.sys_Where = "  TName like '%" + KeyWords + "%'";
                        pc.sys_Where += " or  ProvinceCode like '%" + KeyWords + "%'";
                        pc.sys_Where += " or  CityCode like '%" + KeyWords + "%'";
                        pc.sys_Where += " or  AreaCode like '%" + KeyWords + "%'";
                        pc.sys_Where += " or  Address like '%" + KeyWords + "%'";
                        pc.sys_Order = "Id";
                        List<v_TS_Shop> listAll = VOPBiz.GetPagingData<v_TS_Shop>(pc);
                        if (listAll.Count > 0)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(listAll, true);
                        }
                        else
                        {
                            resultMode.Code = 0;
                            resultMode.Msg = "没有数据";
                            resultMode.Data = "[]";
                        }
                        #endregion
                        break;
                    case "GetByDistances":
                        #region

                        float minKM = float.Parse(httpObject["jsonEntity"]["minKM"].ToString());
                        float maxKM = float.Parse(httpObject["jsonEntity"]["maxKM"].ToString());
                        string Longitude2 = httpObject["jsonEntity"]["Longitude"].ToString();
                        string Latitude2 = httpObject["jsonEntity"]["Latitude"].ToString();
                        string Category2 = httpObject["jsonEntity"]["Category"].ToString();
                        DataSet ds2 = VOPBiz.GetByDistancesOrderByLL(" Category like '" + Category2 + "%' ", minKM, maxKM, Longitude2, Latitude2);
                        if (ds2 != null && ds2.Tables[0].Rows.Count > 0)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(ds2.Tables[0], true);
                        }
                        else
                        {
                            resultMode.Code = 0;
                            resultMode.Msg = "没有数据";
                            resultMode.Data = "[]";
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