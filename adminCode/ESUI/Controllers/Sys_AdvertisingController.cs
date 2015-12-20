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

        public JsonResult EditInfo(Sys_Advertising Sys_AdvertisingModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;
            Sys_AdvertisingModle.UpdateTime = DateTime.Now;
            if (!(Sys_AdvertisingModle.Id != null && !Sys_AdvertisingModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
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
                catch (Exception e) {

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
