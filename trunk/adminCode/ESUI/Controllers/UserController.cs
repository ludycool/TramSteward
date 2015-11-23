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
    //  [Export]
    public class UserController : BaseController
    {
        //
        // GET: /User/
         // [Import(typeof(IRMS_UserDao))]
         //  public IRMS_UserDao OPBiz { get; set; }
        //  public RMS_UserBiz OPBiz = new RMS_UserBiz();
          /// <summary>
          /// 业务层注入
          /// </summary>
          [Dependency]
          public RMS_UserBiz OPBiz { get; set; }
        //  [Import(typeof(IRMS_UserRoleDao))]
          // public IRMS_UserRoleDao URBiz { get; set; }
      //    public RMS_UserRoleBiz URBiz = new RMS_UserRoleBiz();
          [Dependency]
          public RMS_UserRoleBiz URBiz { get; set; }
          public ActionResult Index()
          {
               
              ViewBag.Message = "用户管理";
              //  ViewBag.ManuString= GetManu();
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
              pc.sys_Table = "V_UserRole";
              string DepartmentId = Request["DepartmentId"];
              if (string.IsNullOrEmpty(DepartmentId))
              {
                  pc.sys_Where = "1=1";
              }
              else {
                  pc.sys_Where = "DepartmentId='" + DepartmentId + "'";
              
              }
              //if (!UserData.UserInfo.RoleId.ToString().Equals("fb38f312-0078-4f44-9cda-1183c8042db8"))//不是系统管理员，限制一个医院
              //{
              //    pc.sys_Where += " and YH_HospitalId='" + UserData.UserInfo.YH_HospitalId + "'";
              //}


              pc.sys_Order = "Id";


              List<V_UserRole> list2 = OPBiz.GetPagingData<V_UserRole>(pc);
              Dictionary<string, object> dic = new Dictionary<string, object>();


              // var mql = RMS_UserSet.Id.NotEqual("");
              dic.Add("rows", list2);
              dic.Add("total", pc.RCount);

              return Json(dic, JsonRequestBehavior.AllowGet);
          }

          public JsonResult EditInfo(RMS_User RMS_UserModle)
          {

              bool IsAdd = false;
              if (!(RMS_UserModle.Id != null && !RMS_UserModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
              {
                  IsAdd = true;
              }
              if (IsAdd)
              {
                  RMS_UserModle.Id = Guid.NewGuid();
                  RMS_UserModle.CreateTime = DateTime.Now;
                  RMS_UserModle.ModifyTime = DateTime.Now;
                  //rol.RoleDescription = RMS_UserModle.RoleDescription;
                  //rol.RoleOrder = RMS_UserModle.RoleOrder;

                  OPBiz.Add(RMS_UserModle);
                  return Json("ok", JsonRequestBehavior.AllowGet);
              }
              else
              {

                  RMS_UserModle.WhereExpression = RMS_UserSet.Id.Equal(RMS_UserModle.Id);
                  //  spmodel.GroupId = GroupId;
                  if (OPBiz.Update(RMS_UserModle) > 0)
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
              var mql2 = RMS_UserSet.SelectAll().Where(RMS_UserSet.Id.Equal(ID));
              RMS_User Rmodel = OPBiz.GetEntity(mql2);
              //  groupsBiz.Add(rol);
              return Json(Rmodel, JsonRequestBehavior.AllowGet);
          }


          public JsonResult DeleteInfo(string ID)
          {

              var mql2 = RMS_UserSet.Id.Equal(ID);
              int f = OPBiz.Remove<RMS_UserSet>(mql2);
              return Json("OK", JsonRequestBehavior.AllowGet);

          }

          public JsonResult SetRole(string UserId,string RoleId)
          {
              Guid uId = Guid.Parse(UserId);
              Guid rId = Guid.Parse(RoleId);
              var sql = RMS_UserRoleSet.SelectAll().Where(RMS_UserRoleSet.UserId.Equal(uId));

              RMS_UserRole Rmodel = URBiz.GetEntity(sql);
              if (Rmodel == null)
              {
                  Rmodel = new RMS_UserRole();
                  Rmodel.Id = Guid.NewGuid();
                  Rmodel.UserId = uId;
                  Rmodel.RoleId = rId;
                  URBiz.Add(Rmodel);
                  return Json("ok", JsonRequestBehavior.AllowGet);
              }
              else
              {
                  Rmodel.RoleId = rId;
                  Rmodel.WhereExpression = RMS_UserRoleSet.Id.Equal(Rmodel.Id);
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
