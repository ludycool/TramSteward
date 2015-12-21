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
using e3net.BLL.YhSys;
using e3net.Mode.YhSys;
using System.Xml;

namespace ESUI.Controllers
{
    //[Export]
    public class Sys_AdvertisingController : BaseController
    {

        //[Import(typeof(ISys_AdvertisingDao))]
        //   public ISys_AdvertisingDao OPBiz { get; set; }
        // public Sys_AdvertisingBiz OPBiz = new Sys_AdvertisingBiz();
        public ActionResult Index()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }

        [HttpPost]
        public JsonResult Search()
        {

            Sys_AdvertisingXmlHelper xh = new Sys_AdvertisingXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));
            List<Sys_Advertising> list2 = xh.GetAll();
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = Sys_AdvertisingSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", xh.GetAll().Count);
            string d = JsonConvert.SerializeObject(dic);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(Sys_Advertising Sys_AdvertisingModle)
        {
            Sys_AdvertisingXmlHelper xh = new Sys_AdvertisingXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));
            bool IsAdd = false;
            if (Sys_AdvertisingModle.Details != null)
            {
                Sys_AdvertisingModle.Details = Sys_AdvertisingModle.Details.Replace("&lt", "<").Replace("&gt", ">");
            }
            if (Sys_AdvertisingModle.States == null)
            {
                Sys_AdvertisingModle.States = 1;
            }
            if (Sys_AdvertisingModle.Id ==0)//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                Sys_AdvertisingModle.UpdateTime = DateTime.Now;
                Sys_AdvertisingModle.AddTime = DateTime.Now;
                xh.Add(Sys_AdvertisingModle);
                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {

                Sys_AdvertisingModle.UpdateTime = DateTime.Now;
                if (xh.Update(Sys_AdvertisingModle) > 0)
                {
                    return Json("ok", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json("Nok", JsonRequestBehavior.AllowGet);
                }
            }



        }
        public JsonResult GetInfo(string ID)
        {
            Sys_AdvertisingXmlHelper xh = new Sys_AdvertisingXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));
            Sys_Advertising Rmodel = xh.GetItemById(ID);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Del(string IDSet)
        {
            Sys_AdvertisingXmlHelper xh = new Sys_AdvertisingXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));

            int f = xh.DelById(IDSet);
            return Json("OK", JsonRequestBehavior.AllowGet);

        }

    }
}
