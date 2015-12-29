using e3net.BLL.RMS;
using e3net.common.SysMode;
using e3net.IDAL;
using e3net.Mode;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using e3net.tools;
using Microsoft.Practices.Unity;
using Newtonsoft.Json;
using e3net.BLL;
using e3net.BLL.TramStewardDB;
using e3net.Mode.TramStewardDB;
using e3net.Mode.HttpView;
using e3net.Mode.V_mode;
using sharonjl.utils;

namespace ESUI.Controllers
{
    //[Export]
    public class TS_RepairShopController : BaseController
    {

        //[Import(typeof(ITS_RepairShopDao))]
     //   public ITS_RepairShopDao OPBiz { get; set; }
       // public TS_RepairShopBiz OPBiz = new TS_RepairShopBiz();
        [Dependency]
        public TS_RepairShopBiz OPBiz { get; set; }
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
            if (UserData.UserTypes != UserType.admin)//不是管理员只能返回自己添加的
            {
                Where += " and (CreateManId='" + UserData.Id + "')";
            }
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "v_TS_RepairShop";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<v_TS_RepairShop> list2 = OPBiz.GetPagingData<v_TS_RepairShop>(pc);

            Dictionary<string, object> dic = new Dictionary<string, object>();
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return MyJson(dic);
        }

        public JsonResult EditInfo(TS_RepairShop TS_RepairShopModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            if (TS_RepairShopModle.Longitude != null && TS_RepairShopModle.Latitude != null)//geohash编码
            {
                double Latitude = double.Parse(TS_RepairShopModle.Latitude.ToString());
                double Longitude = double.Parse(TS_RepairShopModle.Longitude.ToString());
                TS_RepairShopModle.geohash = Geohash.Encode(Latitude, Longitude);
            }
            bool IsAdd = false;
            if (TS_RepairShopModle.Details != null)
            {
                TS_RepairShopModle.Details = TS_RepairShopModle.Details.Replace("&lt", "<").Replace("&gt", ">");
            }
            else
            {
                TS_RepairShopModle.Details = "";
            }
            TS_RepairShopModle.UpdateTime = DateTime.Now;
            if (!(TS_RepairShopModle.Id != null && !TS_RepairShopModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                TS_RepairShopModle.isDeleted = false;
                TS_RepairShopModle.isValid = 1;
                TS_RepairShopModle.Id = Guid.NewGuid();
                TS_RepairShopModle.CreateTime = DateTime.Now;
                TS_RepairShopModle.CreateManId = UserData.Id;
                TS_RepairShopModle.Praises = 0;
                TS_RepairShopModle.CallCount = 0;
                TS_RepairShopModle.Clicks = 0;
                try
                {
                    OPBiz.Add(TS_RepairShopModle);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = TS_RepairShopModle.Id.ToString();
                    ReSultMode.Msg = "添加成功";
                }
                catch (Exception e) {

                    ReSultMode.Code = -11;
                    ReSultMode.Data = e.ToString();
                    ReSultMode.Msg = "添加失败";
                }
               
            }
            else
            {
                TS_RepairShopModle.WhereExpression = TS_RepairShopSet.Id.Equal(TS_RepairShopModle.Id);
                //TS_RepairShopModle.ChangedMap.Remove("doctorid");//移除主键值
                if (OPBiz.Update(TS_RepairShopModle) > 0)
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
            var mql2 = TS_RepairShopSet.SelectAll().Where(TS_RepairShopSet.Id.Equal(ID));
            TS_RepairShop Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return MyJson(Rmodel);
        }


        public JsonResult Del(string IDSet)
        {

            var mql2 = TS_RepairShopSet.Id.In(IDSet.Split(','));
           // int f = OPBiz.Remove<TS_RepairShopSet>(mql2);
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
