﻿using e3net.BLL.RMS;
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

namespace ESUI.Controllers
{
    //[Export]
    public class UTS_CarController : BaseController
    {

        //[Import(typeof(ITS_CarDao))]
     //   public ITS_CarDao OPBiz { get; set; }
       // public TS_CarBiz OPBiz = new TS_CarBiz();
        [Dependency]
        public TS_CarBiz OPBiz { get; set; }
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
            Where += " and (CreateManId='" + UserData.Id + "')";//只能返回自己添加的
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "v_TS_Car";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<v_TS_Car> list2 = OPBiz.GetPagingData<v_TS_Car>(pc);

            Dictionary<string, object> dic = new Dictionary<string, object>();
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return MyJson(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(TS_Car DitModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;
            if (DitModle.Details != null)
            {
                DitModle.Details = DitModle.Details.Replace("&lt", "<").Replace("&gt", ">");
            }
            else
            {
                DitModle.Details = "";
            }
            DitModle.UpdateTime = DateTime.Now;
            if (!(DitModle.Id != null && !DitModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {

                #region 初始化
                DitModle.Id = Guid.NewGuid();

                DitModle.CreateTime = DateTime.Now;
                DitModle.CreateManId = UserData.Id;
                DitModle.Praises = 0;
                DitModle.States = 0;
                DitModle.isDeleted = false;
                DitModle.isValid = 1;
                DitModle.Star = 1;
                #endregion
                try
                {
                    OPBiz.Add(DitModle);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = DitModle.Id.ToString();
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
                DitModle.WhereExpression = TS_CarSet.Id.Equal(DitModle.Id);
                //DitModle.ChangedMap.Remove("doctorid");//移除主键值

                var mqlO = TS_CarSet.SelectAll().Where(TS_CarSet.Id.Equal(DitModle.Id));
                TS_Car modelOld = OPBiz.GetEntity(mqlO);//旧数据

                #region  不能修改的数据
                DitModle.CreateTime = modelOld.CreateTime;
                DitModle.CreateManId = modelOld.CreateManId;
                DitModle.Praises = modelOld.Praises;
                DitModle.States = modelOld.States;
                DitModle.isDeleted = modelOld.isDeleted;
                DitModle.isValid = modelOld.isValid;
                DitModle.Star = modelOld.Star;
                #endregion
                if (OPBiz.Update(DitModle) > 0)
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
            var mql2 = TS_CarSet.SelectAll().Where(TS_CarSet.Id.Equal(ID));
            TS_Car Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return MyJson(Rmodel, JsonRequestBehavior.AllowGet);
        }


        public JsonResult Del(string IDSet)
        {

            var mql2 = TS_CarSet.Id.In(IDSet.Split(','));
           // int f = OPBiz.Remove<TS_CarSet>(mql2);
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
