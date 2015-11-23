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
using e3net.Mode.YhSys;
using e3net.BLL.YhSys;
using e3net.BLL;
using e3net.Mode;

namespace ESUI.Controllers
{
    //  [Export]
    public class AppVersionController : BaseController
    {
        //
        // GET: /User/
         // [Import(typeof(IAppVersionDao))]
         //  public IAppVersionDao OPBiz { get; set; }
        //  public AppVersionBiz OPBiz = new AppVersionBiz();
          /// <summary>
          /// 业务层注入
          /// </summary>
          [Dependency]
          public AppVersionBiz OPBiz { get; set; }

          public ActionResult Index()
          {
               
              ViewBag.Message = "版本控制";
              ViewBag.RuteUrl = RuteUrl();
              ViewBag.toolbar = toolbar();
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
              pc.sys_Table = "AppVersion";
                  pc.sys_Where = "1=1";
              //if (!UserData.UserInfo.RoleId.ToString().Equals("fb38f312-0078-4f44-9cda-1183c8042db8"))//不是系统管理员，限制一个医院
              //{
              //    pc.sys_Where += " and YH_HospitalId='" + UserData.UserInfo.YH_HospitalId + "'";
              //}


              pc.sys_Order = "Id";


              List<AppVersion> list2 = OPBiz.GetPagingData<AppVersion>(pc);
              Dictionary<string, object> dic = new Dictionary<string, object>();


              // var mql = AppVersionSet.Id.NotEqual("");
              dic.Add("rows", list2);
              dic.Add("total", pc.RCount);

              return Json(dic, JsonRequestBehavior.AllowGet);
          }

          public JsonResult EditInfo(AppVersion AppVersionModle)
          {

              bool IsAdd = false;
              if (!(AppVersionModle.Id != null && !AppVersionModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
              {
                  IsAdd = true;
              }
              if (IsAdd)
              {
                  AppVersionModle.Id = Guid.NewGuid();
                  AppVersionModle.AddTime = DateTime.Now;
                  AppVersionModle.UpdateTime = DateTime.Now;
                  //rol.RoleDescription = AppVersionModle.RoleDescription;
                  //rol.RoleOrder = AppVersionModle.RoleOrder;

                  OPBiz.Add(AppVersionModle);
                  return Json("ok", JsonRequestBehavior.AllowGet);
              }
              else
              {

                  AppVersionModle.WhereExpression = AppVersionSet.Id.Equal(AppVersionModle.Id);
                  //  spmodel.GroupId = GroupId;
                  if (OPBiz.Update(AppVersionModle) > 0)
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
              var mql2 = AppVersionSet.SelectAll().Where(AppVersionSet.Id.Equal(ID));
              AppVersion Rmodel = OPBiz.GetEntity(mql2);
              //  groupsBiz.Add(rol);
              return Json(Rmodel, JsonRequestBehavior.AllowGet);
          }


          public JsonResult DeleteInfo(string ID)
          {

              var mql2 = AppVersionSet.Id.Equal(ID);
              int f = OPBiz.Remove<AppVersionSet>(mql2);
              return Json("OK", JsonRequestBehavior.AllowGet);

          }

        
          
    }
}
