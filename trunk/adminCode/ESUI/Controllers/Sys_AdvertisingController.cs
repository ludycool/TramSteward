using e3net.BLL.RMS;
using e3net.IDAL;
using e3net.Mode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using e3net.tools;
using Microsoft.Practices.Unity;
using Newtonsoft.Json;
using e3net.BLL;
using e3net.Mode.V_mode;
using e3net.common.SysMode;
using e3net.Mode.HttpView;
using e3net.Mode.TramStewardDB;
using e3net.BLL.TramStewardDB;


namespace ESUI.Controllers
{
    //[Export]
    public class Sys_AdvertisingController : BaseController
    {

        //[Import(typeof(ISys_AdvertisingDao))]
        //   public ISys_AdvertisingDao OPBiz { get; set; }
        // public Sys_AdvertisingBiz OPBiz = new Sys_AdvertisingBiz();
        [Dependency]
        public Sys_AdvertisingBiz OPBiz { get; set; }
        public ActionResult Index()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }

        [HttpPost]
        public JsonResult Search()
        {
            // SelectWhere.selectwherestring(Request["sqlSet"]);
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
            //string Where = Request["sqlSet"] == null ? "1=1" : SelectWhere.selectwherestring(Request["sqlSet"]);
            string Where = Request["sqlSet"] == null ? "1=1" : GetSql(Request["sqlSet"]);
            Where += " and (isDeleted=0)";
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "v_Sys_Advertising";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<v_Sys_Advertising> list2 = OPBiz.GetPagingData<v_Sys_Advertising>(pc);

            Dictionary<string, object> dic = new Dictionary<string, object>();
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return MyJson(dic, JsonRequestBehavior.AllowGet);
        }


        #region 绑定的信息
        /// <summary>
        /// 绑定各种信息  
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public JsonResult GetSetInfo()
        {

            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
            string Where = " (isDeleted=0) and (States>0)";
            if (Request["KeyWords"] != null)//关键词
            {
                string KeyWords = FilterTools.FilterSpecial(Request["KeyWords"].ToString());
                Where += " and( TName like '%" + KeyWords + "%'";
                Where += " or  UserName like '%" + KeyWords + "%' ";
                Where += " or  TrueName like '%" + KeyWords + "%' ";
                Where += " or  Phone like '%" + KeyWords + "%') ";
            }
            string types = Request["types"].ToString();//类型
            string table = "";//数据表
            switch (types)
            {
                case "1"://店铺
                    table = "v_TS_Shop";
                    break;
                case "2"://便民服务
                    table = "v_TS_Service";
                    break;
                case "3"://维修店
                    table = "v_TS_RepairShop";
                    break;
                case "4"://便民信息
                    table = "v_TS_ServiceNew";
                    break;
            }

            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = table;
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;

            Dictionary<string, object> dic = new Dictionary<string, object>();

            switch (types)//四种数据类型
            {
                case "1"://店铺
                    List<v_TS_Shop> list1 = OPBiz.GetPagingData<v_TS_Shop>(pc);
                    dic.Add("rows", list1);
                    break;
                case "2"://便民服务
                    List<v_TS_Service> list2 = OPBiz.GetPagingData<v_TS_Service>(pc);
                    dic.Add("rows", list2);
                    break;
                case "3"://维修店
                    List<v_TS_RepairShop> list3 = OPBiz.GetPagingData<v_TS_RepairShop>(pc);
                    dic.Add("rows", list3);
                    break;
                case "4"://便民信息
                    List<v_TS_ServiceNew> list4 = OPBiz.GetPagingData<v_TS_ServiceNew>(pc);
                    dic.Add("rows", list4);
                    break;
            }





            dic.Add("total", pc.RCount);
            return MyJson(dic, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// 根据类型 Id获取绑定的信息
        /// </summary>
        /// <param name="ID"></param>
        /// <param name="CType">类型</param>
        /// <returns></returns>
        public JsonResult GetBindInfo(string ID, string CType)
        {

            var mql = TS_ShopSet.SelectAll().Where(TS_ShopSet.Id.Equal(ID));
            switch (CType)
            {
                case "1"://店铺
                    TS_ShopBiz sb = new TS_ShopBiz();
                    mql = TS_ShopSet.SelectAll().Where(TS_ShopSet.Id.Equal(ID));
                    TS_Shop Rmodel = sb.GetEntity(mql);
                    return MyJson(Rmodel, JsonRequestBehavior.AllowGet);
                    break;
                case "2"://便民服务
                    TS_ServiceBiz sb2 = new TS_ServiceBiz();
                    mql = TS_ServiceSet.SelectAll().Where(TS_ServiceSet.Id.Equal(ID));
                    TS_Service Rmodel2 = sb2.GetEntity(mql); ;
                    return MyJson(Rmodel2, JsonRequestBehavior.AllowGet);
                    break;
                case "3"://维修店
                    TS_RepairShopBiz sb3 = new TS_RepairShopBiz();
                    mql = TS_RepairShopSet.SelectAll().Where(TS_RepairShopSet.Id.Equal(ID));
                    TS_RepairShop Rmodel3 = sb3.GetEntity(mql);
                    return MyJson(Rmodel3, JsonRequestBehavior.AllowGet);
                    break;
                case "4"://便民信息
                    TS_ServiceNewBiz sb4 = new TS_ServiceNewBiz();
                    mql = TS_ServiceNewSet.SelectAll().Where(TS_ServiceNewSet.Id.Equal(ID));
                    TS_ServiceNew Rmodel4 = sb4.GetEntity(mql);
                    return MyJson(Rmodel4, JsonRequestBehavior.AllowGet);
                    break;
                default:

                    return null;
                    break;
            }


        }
        #endregion


        public JsonResult EditInfo(Sys_Advertising Sys_AdvertisingModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;
            Sys_AdvertisingModle.UpdateTime = DateTime.Now;
            if (Sys_AdvertisingModle.Id == 0)//id为空，是添加
            {
                IsAdd = true;
                Sys_AdvertisingModle.AddTime = DateTime.Now;
            }
            if (IsAdd)
            {

                Sys_AdvertisingModle.isDeleted = false;
                try
                {
                    OPBiz.Add(Sys_AdvertisingModle);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = Sys_AdvertisingModle.Id.ToString();
                    ReSultMode.Msg = "添加成功";
                }
                catch (Exception e)
                {

                    ReSultMode.Code = -11;
                    ReSultMode.Data = e.ToString();
                    ReSultMode.Msg = "添加失败";
                }

            }
            else
            {
                Sys_AdvertisingModle.WhereExpression = Sys_AdvertisingSet.Id.Equal(Sys_AdvertisingModle.Id);
                Sys_AdvertisingModle.ChangedMap.Remove("id");//移除主键值
                if (OPBiz.Update(Sys_AdvertisingModle) > 0)
                {
                    ReSultMode.Code = 11;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "修改成功";
                }
                else
                {
                    ReSultMode.Code = -13;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "修改失败";
                }
            }

            return Json(ReSultMode, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetInfo(string ID)
        {
            var mql2 = Sys_AdvertisingSet.SelectAll().Where(Sys_AdvertisingSet.Id.Equal(ID));
            Sys_Advertising Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return MyJson(Rmodel, JsonRequestBehavior.AllowGet);
        }





        public JsonResult Del(string IDSet)
        {

            var mql2 = Sys_AdvertisingSet.Id.In(IDSet.Split(','));
            // int f = OPBiz.Remove<Sys_AdvertisingSet>(mql2);
            int f = OPBiz.DelForSetDelete("Id", IDSet);
            HttpReSultMode ReSultMode = new HttpReSultMode();
            if (f > 0)
            {
                ReSultMode.Code = 11;
                ReSultMode.Data = f.ToString();
                ReSultMode.Msg = "成功删除" + f + "条数据！";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
            else
            {
                ReSultMode.Code = -13;
                ReSultMode.Data = "0";
                ReSultMode.Msg = "删除失败！";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }

        }

    }
}
