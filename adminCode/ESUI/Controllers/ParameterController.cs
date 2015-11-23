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
    public class ParameterController : BaseController
    {

        public ActionResult Index()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }

        [HttpPost]
        public JsonResult Search()
        {

            ParameterXmlHelper xh = new ParameterXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));
            List<Parameter> list2 = xh.GetAll();
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = ParameterSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", xh.GetAll().Count);
            string d = JsonConvert.SerializeObject(dic);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(Parameter ParameterModle)
        {
            ParameterXmlHelper xh = new ParameterXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));
            bool IsAdd = false;
          //  ParameterModle.Value = ParameterModle.Value.Replace("&lt", "<").Replace("&gt", ">");

            if (!(ParameterModle.Id != null && !ParameterModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                ParameterModle.Id = Guid.NewGuid();
                xh.Add(ParameterModle);
                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {

                if (xh.Update(ParameterModle) > 0)
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
            ParameterXmlHelper xh = new ParameterXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));
            Parameter Rmodel = xh.GetItemBykeys(ID);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Del(string IDSet)
        {
            ParameterXmlHelper xh = new ParameterXmlHelper(System.Web.HttpContext.Current.Server.MapPath("~/App_Data/"));

            int f = xh.DelBykeys(IDSet);
            return Json("OK", JsonRequestBehavior.AllowGet);

        }

    }
}
