using e3net.BLL;
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
    /// CityAreaHandler 的摘要说明
    /// </summary>
    public class CityAreaHandler : IHttpHandler
    {
        Sys_CityAreaBiz OPBiz = new Sys_CityAreaBiz();
        public void ProcessRequest(HttpContext context)
        {

            // 请求例子  /httpSever/CityAreaHandler.ashx?json={"jsonEntity":{},"action":"GetProvince"}
            // /httpSever/CityAreaHandler.ashx?json={"jsonEntity":{},"action":"GetCity"}
            // /httpSever/CityAreaHandler.ashx?json={"jsonEntity":{"pid":"1"},"action":"GetCityByP"}
            // /httpSever/CityAreaHandler.ashx?json={"jsonEntity":{"cid":"2"},"action":"GetAreaByC"}

            context.Response.ContentType = "text/plain";
            // context.Response.Write("Hello World");
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                List<Sys_CityArea> ds = new List<Sys_CityArea>();
                switch (httpObject["action"].ToString())
                {

                    case "GetProvince"://获取所有的省
                        this.GetProvince(context, httpObject, resultMode);;
                        break;
                    case "GetCity"://获取所有的城市
                       this.GetCity(context, httpObject, resultMode);;
                        break;
                    case "GetCityByP"://根据省获取所有的城市
                        this.GetCityByP(context, httpObject, resultMode); ;
                        break;
                    case "GetAreaByC"://根据市获取所有的区
                        this.GetAreaByC(context, httpObject, resultMode); ;
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
        /// 获取所有的省
        /// </summary>
        /// <param name="context"></param>
        /// <param name="httpObject"></param>
        /// <param name="resultMode"></param>
        private void GetProvince(HttpContext context, JObject httpObject, HttpReSultMode resultMode)
        {
            var mql = Sys_CityAreaSet.SelectAll().Where(Sys_CityAreaSet.AreaTypes.Equal(2));
            List<Sys_CityArea> list = OPBiz.GetOwnList(mql);

            if (list != null && list.Count > 0)
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

            context.Response.Write(JsonHelper.ToJson(resultMode, true));
            context.Response.End();
        }

        /// <summary>
        /// 获取所有的市
        /// </summary>
        /// <param name="context"></param>
        /// <param name="httpObject"></param>
        /// <param name="resultMode"></param>
        private void GetCity(HttpContext context, JObject httpObject, HttpReSultMode resultMode)
        {
            var mql = Sys_CityAreaSet.SelectAll().Where(Sys_CityAreaSet.AreaTypes.Equal(1));
            List<Sys_CityArea> list = OPBiz.GetOwnList(mql);

            if (list != null && list.Count > 0)
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

            context.Response.Write(JsonHelper.ToJson(resultMode, true));
            context.Response.End();
        }

        /// <summary>
        /// 根据省所有的城市
        /// </summary>
        /// <param name="context"></param>
        /// <param name="httpObject"></param>
        /// <param name="resultMode"></param>
        private void GetCityByP(HttpContext context, JObject httpObject, HttpReSultMode resultMode)
        {
            string pId = httpObject["jsonEntity"]["pid"].ToString();
            var mql = Sys_CityAreaSet.SelectAll().Where(Sys_CityAreaSet.ParentId.Equal(pId));
            List<Sys_CityArea> list = OPBiz.GetOwnList<Sys_CityArea>(mql);

            if (list != null && list.Count > 0)
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

            context.Response.Write(JsonHelper.ToJson(resultMode, true));
            context.Response.End();
        }

        /// <summary>
        /// 根据市获取所有的区
        /// </summary>
        /// <param name="context"></param>
        /// <param name="httpObject"></param>
        /// <param name="resultMode"></param>
        private void GetAreaByC(HttpContext context, JObject httpObject, HttpReSultMode resultMode)
        {
            string pId = httpObject["jsonEntity"]["cid"].ToString();
            var mql = Sys_CityAreaSet.SelectAll().Where(Sys_CityAreaSet.ParentId.Equal(pId));
            List<Sys_CityArea> list = OPBiz.GetOwnList<Sys_CityArea>(mql);

            if (list != null && list.Count > 0)
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