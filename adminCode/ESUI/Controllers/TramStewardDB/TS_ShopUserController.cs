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
    public class TS_ShopUserController : BaseController
    {

        //[Import(typeof(ITS_ShopUserDao))]
     //   public ITS_ShopUserDao OPBiz { get; set; }
       // public TS_ShopUserBiz OPBiz = new TS_ShopUserBiz();
        [Dependency]
        public TS_ShopUserBiz OPBiz { get; set; }
        [Dependency]
        public TS_ShopUserRoleBiz URBiz { get; set; }
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
            pc.sys_Table = "v_TS_ShopUserRole";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<v_TS_ShopUserRole> list2 = OPBiz.GetPagingData<v_TS_ShopUserRole>(pc);

            Dictionary<string, object> dic = new Dictionary<string, object>();
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return MyJson(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(TS_ShopUser TS_ShopUserModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;
            if (TS_ShopUserModle.Details != null)
            {
                TS_ShopUserModle.Details = TS_ShopUserModle.Details.Replace("&lt", "<").Replace("&gt", ">");
            }
            else
            {
                TS_ShopUserModle.Details = "";
            }
            TS_ShopUserModle.UpdateTime = DateTime.Now;
            if (!(TS_ShopUserModle.Id != null && !TS_ShopUserModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                TS_ShopUserModle.Id = Guid.NewGuid();
                TS_ShopUserModle.AddTime = DateTime.Now;
                TS_ShopUserModle.LocationUpdateTime = DateTime.Now;
                TS_ShopUserModle.isDeleted = false;
                TS_ShopUserModle.isValid = 1;
                try
                {
                    OPBiz.Add(TS_ShopUserModle);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = TS_ShopUserModle.Id.ToString();
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
                TS_ShopUserModle.WhereExpression = TS_ShopUserSet.Id.Equal(TS_ShopUserModle.Id);
                //TS_ShopUserModle.ChangedMap.Remove("doctorid");//移除主键值
                if (OPBiz.Update(TS_ShopUserModle) > 0)
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
            var mql2 = TS_ShopUserSet.SelectAll().Where(TS_ShopUserSet.Id.Equal(ID));
            TS_ShopUser Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return MyJson(Rmodel, JsonRequestBehavior.AllowGet);
        }


        public JsonResult Del(string IDSet)
        {

            var mql2 = TS_ShopUserSet.Id.In(IDSet.Split(','));
           // int f = OPBiz.Remove<TS_ShopUserSet>(mql2);
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


        public JsonResult SetRole(string UserId, string RoleId)
        {
            Guid uId = Guid.Parse(UserId);
            Guid rId = Guid.Parse(RoleId);
            var sql = TS_ShopUserRoleSet.SelectAll().Where(TS_ShopUserRoleSet.UserId.Equal(uId));

            TS_ShopUserRole Rmodel = URBiz.GetEntity(sql);
            if (Rmodel == null)
            {
                Rmodel = new TS_ShopUserRole();
                Rmodel.Id = Guid.NewGuid();
                Rmodel.UserId = uId;
                Rmodel.RoleId = rId;
                URBiz.Add(Rmodel);
                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {
                Rmodel.RoleId = rId;
                Rmodel.WhereExpression = TS_ShopUserRoleSet.Id.Equal(Rmodel.Id);
                //  spmodel.GroupId = GroupId;
                if (URBiz.Update(Rmodel) > 0)
                {
                    return Json("ok", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json("Nok", JsonRequestBehavior.AllowGet);
                }

            }

        }
    }
}
