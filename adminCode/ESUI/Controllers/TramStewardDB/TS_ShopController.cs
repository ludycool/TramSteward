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

namespace ESUI.Controllers
{
    //[Export]
    public class TS_ShopController : BaseController
    {

        //[Import(typeof(ITS_ShopDao))]
     //   public ITS_ShopDao OPBiz { get; set; }
       // public TS_ShopBiz OPBiz = new TS_ShopBiz();
        [Dependency]
        public TS_ShopBiz OPBiz { get; set; }
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
            pc.sys_Table = "v_TS_Shop";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<v_TS_Shop> list2 = OPBiz.GetPagingData<v_TS_Shop>(pc);

            Dictionary<string, object> dic = new Dictionary<string, object>();
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(TS_Shop TS_ShopModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;
            if (TS_ShopModle.Details != null)
            {
                TS_ShopModle.Details = TS_ShopModle.Details.Replace("&lt", "<").Replace("&gt", ">");
            }
            else
            {
                TS_ShopModle.Details = "";
            }
            TS_ShopModle.UpdateTime = DateTime.Now;
            if (!(TS_ShopModle.Id != null && !TS_ShopModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                TS_ShopModle.Category = "";
                TS_ShopModle.isDeleted = false;
                TS_ShopModle.isValid = 1;
                TS_ShopModle.Id = Guid.NewGuid();
                TS_ShopModle.CreateTime = DateTime.Now;
                TS_ShopModle.CreateManId = UserData.UserInfo.Id;
                try
                {
                    OPBiz.Add(TS_ShopModle);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = TS_ShopModle.Id.ToString();
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
                TS_ShopModle.WhereExpression = TS_ShopSet.Id.Equal(TS_ShopModle.Id);
                //TS_ShopModle.ChangedMap.Remove("doctorid");//移除主键值
                if (OPBiz.Update(TS_ShopModle) > 0)
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
            var mql2 = TS_ShopSet.SelectAll().Where(TS_ShopSet.Id.Equal(ID));
            TS_Shop Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }


        public JsonResult Del(string IDSet)
        {

            var mql2 = TS_ShopSet.Id.In(IDSet.Split(','));
           // int f = OPBiz.Remove<TS_ShopSet>(mql2);
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
