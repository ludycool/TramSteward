using e3net.BLL;
using e3net.BLL.RMS;
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
    public class DepartmentController : BaseController
    {
        //
        // GET: /Department/

          //[Import(typeof(IRMS_DepartmentDao))]
       //  public IRMS_DepartmentDao DDBiz { get; set; }
    //    public RMS_DepartmentBiz DDBiz = new RMS_DepartmentBiz();
        [Dependency]
        public RMS_DepartmentBiz DDBiz { get; set; }
        public ActionResult Index()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }

        public JsonResult EditInfo(RMS_Department Mode)
        {
            Random rnd = new Random();
            bool IsAdd = false;
            if (!(Mode.Id != null && !Mode.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                Mode.Id = Guid.NewGuid();
                Mode.CreateTime = DateTime.Now;
                Mode.ModifyTime = DateTime.Now;
                DDBiz.Add(Mode);

                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {
                Mode.WhereExpression = RMS_DepartmentSet.Id.Equal(Mode.Id);
                //  spmodel.GroupId = GroupId;
                Mode.CreateTime = DateTime.Now;
                Mode.ModifyTime = DateTime.Now;
                if (DDBiz.Update(Mode) > 0)
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
            var mql = RMS_DepartmentSet.SelectAll().Where(RMS_DepartmentSet.Id.Equal(ID));
            RMS_Department Rmodel = DDBiz.GetEntity(mql);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
        public string GetJson()
        {

            var sql = RMS_DepartmentSet.SelectAll();
            //if (!UserData.UserInfo.RoleId.ToString().Equals("fb38f312-0078-4f44-9cda-1183c8042db8"))//不是系统管理员，限制一个医院
            //{
            //    sql = RMS_DepartmentSet.SelectAll().Where(RMS_DepartmentSet.YH_HospitalId.Equal(UserData.UserInfo.YH_HospitalId));
            //}

            List<RMS_Department> listAll = DDBiz.GetOwnList<RMS_Department>(sql);
            string jsonstring= DDBiz.GetTree(listAll);
            return jsonstring;
        }

        public JsonResult DeleteInfo(string ID)
        {

            var mql2 = RMS_DepartmentSet.Id.Equal(ID);
            int f = DDBiz.Remove<RMS_DepartmentSet>(mql2);
            return Json("OK", JsonRequestBehavior.AllowGet);

        }

    }
}
