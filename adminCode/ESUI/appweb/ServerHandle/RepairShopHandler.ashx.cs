using e3net.BLL.TramStewardDB;
using e3net.common.SysMode;
using e3net.Mode.HttpView;
using e3net.Mode.TramStewardDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.appweb.ServerHandle
{
    /// <summary>
    /// RepairShopHandler 的摘要说明
    /// </summary>
    public class RepairShopHandler : IHttpHandler
    {

        TS_RepairShopBiz OPBiz = new TS_RepairShopBiz();
        public void ProcessRequest(HttpContext context)
        {
            string action = context.Request["action"];
            context.Response.ContentType = "text/plain";
            //  context.Response.Write("Hello World");
            switch (action)
            {

                case "GetData":

                    context.Response.Write(GetData(context));
                    context.Response.End();
                    break;
            }
        }
        public string GetData(HttpContext context)
        {
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {
                string Category = context.Request["Category"];
                string KeyWords = context.Request["keyWords"];
                int pageIndex = int.Parse(context.Request["Pageindex"]);
                int pageSize = int.Parse(context.Request["Pagesize"]);
                string Longitude = context.Request["Lng"];
                string Latitude = context.Request["Lat"];
                string sqlwhereStr = " Category like '" + Category + "%' ";
                if (!string.IsNullOrEmpty(KeyWords))
                {
                    sqlwhereStr += " and(Title like '%" + KeyWords + "%'";
                    sqlwhereStr += " or  Address like '%" + KeyWords + "%'";
                    sqlwhereStr += " or  Origin like '%" + KeyWords + "%'";
                    sqlwhereStr += " or  CategoryName like '%" + KeyWords + "%')";
                }
                DataSet ds = OPBiz.GetPagingOrderByLL(sqlwhereStr, pageIndex, pageSize, Longitude, Latitude);
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