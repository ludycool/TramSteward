using e3net.BLL;
using e3net.BLL.RMS;
using e3net.common.SysMode;
using e3net.IDAL.RMS;
using e3net.Mode.RMS;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Practices.Unity;

namespace ESUI.Controllers
{
    //[Export]
    public class ButtonsController : BaseController
    {

        //[Import(typeof(IRMS_ButtonsDao))]
      //  public IRMS_ButtonsDao OPBiz { get; set; }
     //   public RMS_ButtonsBiz OPBiz = new RMS_ButtonsBiz();
        [Dependency]
        public RMS_ButtonsBiz OPBiz { get; set; }
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GetList()
        {

            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
            ////字段排序
            //String sortField = Request["sortField"];
            //String sortOrder = Request["sortOrder"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "RMS_Buttons";
            pc.sys_Where = "1=1";
            pc.sys_Order = "Id";


            List<RMS_Buttons> list2 = OPBiz.GetPagingData(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = RMS_ButtonsSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);

            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(RMS_Buttons RMS_ButtonsModle)
        {
          
            bool IsAdd = false;
            if (!(RMS_ButtonsModle.Id != null && !RMS_ButtonsModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                RMS_ButtonsModle.Id = Guid.NewGuid();
                RMS_ButtonsModle.CreateTime = DateTime.Now;
                RMS_ButtonsModle.ModifyTime = DateTime.Now;
                //rol.RoleDescription = RMS_ButtonsModle.RoleDescription;
                //rol.RoleOrder = RMS_ButtonsModle.RoleOrder;

                OPBiz.Add(RMS_ButtonsModle);
                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {

                RMS_ButtonsModle.WhereExpression = RMS_ButtonsSet.Id.Equal(RMS_ButtonsModle.Id);
                //  spmodel.GroupId = GroupId;
                if (OPBiz.Update(RMS_ButtonsModle) > 0)
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
            var mql2 = RMS_ButtonsSet.SelectAll().Where(RMS_ButtonsSet.Id.Equal(ID));
            RMS_Buttons Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }


        public JsonResult DeleteInfo(string ID)
        {

            var mql2 = RMS_ButtonsSet.Id.Equal(ID);
            int f = OPBiz.Remove<RMS_ButtonsSet>(mql2);
            return Json("OK", JsonRequestBehavior.AllowGet);

        }

    }
}
