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
using Newtonsoft.Json.Converters;
using e3net.Mode.V_mode;

namespace ESUI.Controllers
{
    //[Export]
    public class TS_ServiceNewController : BaseController
    {

        //[Import(typeof(ITS_ServiceNewDao))]
     //   public ITS_ServiceNewDao OPBiz { get; set; }
       // public TS_ServiceNewBiz OPBiz = new TS_ServiceNewBiz();
        [Dependency]
        public TS_ServiceNewBiz OPBiz { get; set; }
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
            pc.sys_Table = "v_TS_ServiceNew";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<v_TS_ServiceNew> list2 = OPBiz.GetPagingData<v_TS_ServiceNew>(pc);

            Dictionary<string, object> dic = new Dictionary<string, object>();
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return MyJson(dic);
        }

        public JsonResult EditInfo(TS_ServiceNew TS_ServiceNewModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;
            if (TS_ServiceNewModle.Details != null)
            {
                TS_ServiceNewModle.Details = TS_ServiceNewModle.Details.Replace("&lt", "<").Replace("&gt", ">");
            }
            else
            {
                TS_ServiceNewModle.Details = "";
            }
            TS_ServiceNewModle.UpdateTime = DateTime.Now;
            if (!(TS_ServiceNewModle.Id != null && !TS_ServiceNewModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                TS_ServiceNewModle.Id = Guid.NewGuid();
                TS_ServiceNewModle.CreateTime = DateTime.Now;
                TS_ServiceNewModle.isDeleted = false;
                TS_ServiceNewModle.isValid = 1;
                TS_ServiceNewModle.CreateManId = UserData.Id;
                TS_ServiceNewModle.Praises = 0;
                TS_ServiceNewModle.CallCount = 0;
                TS_ServiceNewModle.Clicks = 0;
                try
                {
                    OPBiz.Add(TS_ServiceNewModle);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = TS_ServiceNewModle.Id.ToString();
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
                TS_ServiceNewModle.WhereExpression = TS_ServiceNewSet.Id.Equal(TS_ServiceNewModle.Id);
                //TS_ServiceNewModle.ChangedMap.Remove("doctorid");//移除主键值
                if (OPBiz.Update(TS_ServiceNewModle) > 0)
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
            var mql2 = TS_ServiceNewSet.SelectAll().Where(TS_ServiceNewSet.Id.Equal(ID));
            TS_ServiceNew Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return MyJson(Rmodel);
        }


        public JsonResult Del(string IDSet)
        {

            var mql2 = TS_ServiceNewSet.Id.In(IDSet.Split(','));
           // int f = OPBiz.Remove<TS_ServiceNewSet>(mql2);
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
