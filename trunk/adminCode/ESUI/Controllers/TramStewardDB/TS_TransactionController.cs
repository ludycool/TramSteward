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
    public class TS_TransactionController : BaseController
    {

        //[Import(typeof(ITS_TransactionDao))]
     //   public ITS_TransactionDao OPBiz { get; set; }
       // public TS_TransactionBiz OPBiz = new TS_TransactionBiz();
        [Dependency]
        public TS_TransactionBiz OPBiz { get; set; }
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
            pc.sys_Table = "v_TS_Transaction";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<v_TS_Transaction> list2 = OPBiz.GetPagingData<v_TS_Transaction>(pc);

            Dictionary<string, object> dic = new Dictionary<string, object>();
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(TS_Transaction TS_TransactionModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;
            if (TS_TransactionModle.Details != null)
            {
                TS_TransactionModle.Details = TS_TransactionModle.Details.Replace("&lt", "<").Replace("&gt", ">");
            }
            else
            {
                TS_TransactionModle.Details = "";
            }
            TS_TransactionModle.UpdateTime = DateTime.Now;
            if (!(TS_TransactionModle.Id != null && !TS_TransactionModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                TS_TransactionModle.Id = Guid.NewGuid();
                TS_TransactionModle.CreateTime = DateTime.Now;
                TS_TransactionModle.isDeleted = false;
                TS_TransactionModle.isValid = 1;
                TS_TransactionModle.CreateManId = UserData.UserInfo.Id;
                try
                {
                    OPBiz.Add(TS_TransactionModle);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = TS_TransactionModle.Id.ToString();
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
                TS_TransactionModle.WhereExpression = TS_TransactionSet.Id.Equal(TS_TransactionModle.Id);
                //TS_TransactionModle.ChangedMap.Remove("doctorid");//移除主键值
                if (OPBiz.Update(TS_TransactionModle) > 0)
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
            var mql2 = TS_TransactionSet.SelectAll().Where(TS_TransactionSet.Id.Equal(ID));
            TS_Transaction Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }


        public JsonResult Del(string IDSet)
        {

            var mql2 = TS_TransactionSet.Id.In(IDSet.Split(','));
           // int f = OPBiz.Remove<TS_TransactionSet>(mql2);
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
