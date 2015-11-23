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
    public class AdvertisingController : BaseController
    {

        //[Import(typeof(IAdvertisingDao))]
        //   public IAdvertisingDao OPBiz { get; set; }
        // public AdvertisingBiz OPBiz = new AdvertisingBiz();
        public ActionResult Index()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }

        [HttpPost]
        public JsonResult Search()
        {

            AdvertisingXmlHelper xh = new AdvertisingXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));
            List<Advertising> list2 = xh.GetAll();
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = AdvertisingSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", xh.GetAll().Count);
            string d = JsonConvert.SerializeObject(dic);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(Advertising AdvertisingModle)
        {
            AdvertisingXmlHelper xh = new AdvertisingXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));
            bool IsAdd = false;
            if (AdvertisingModle.Details != null)
            {
                AdvertisingModle.Details = AdvertisingModle.Details.Replace("&lt", "<").Replace("&gt", ">");
            }
            if (AdvertisingModle.States == null)
            {
                AdvertisingModle.States = 1;
            }
            if (!(AdvertisingModle.Id != null && !AdvertisingModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                AdvertisingModle.Id = Guid.NewGuid();
                AdvertisingModle.UpdateTime = DateTime.Now;
                AdvertisingModle.AddTime = DateTime.Now;
                xh.Add(AdvertisingModle);
                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {

                AdvertisingModle.UpdateTime = DateTime.Now;
                if (xh.Update(AdvertisingModle) > 0)
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
            AdvertisingXmlHelper xh = new AdvertisingXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));
            Advertising Rmodel = xh.GetItemById(ID);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Del(string IDSet)
        {
            AdvertisingXmlHelper xh = new AdvertisingXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));

            int f = xh.DelById(IDSet);
            return Json("OK", JsonRequestBehavior.AllowGet);

        }

    }
}
