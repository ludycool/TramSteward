

using e3net.BLL.RMS;
using e3net.common.SysMode;
using e3net.IDAL.RMS;
using e3net.Mode.RMS;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using Microsoft.Practices.Unity;
using e3net.Mode.V_mode;

namespace ESUI.Controllers
{

    //[Export]
    public class HomeController : BaseController
    {
        // GET: /HelloWorld/
        //[Import(typeof(IRMS_MenusDao))]
      //  public IRMS_MenusDao uBiz { get; set; }
     //   public RMS_MenusBiz uBiz = new RMS_MenusBiz();
        [Dependency]
        public RMS_MenusBiz uBiz { get; set; }
        [Dependency]
        public RMS_UserBiz userBiz { get; set; }
        public ActionResult Index()
        {
       

            ViewBag.Message = "修改此模板以快速启动你的 ASP.NET MVC 应用程序。";
        //  ViewBag.ManuString= GetManu();
           ViewBag.testString = "<div title=\"功能管理\" iconcls=\"icon-edit\" style=\"padding: 10px;\"><p><a href=\"javascript:void(0)\" src=\"/RoleManagement/Index\" class=\"MenuLink\">角色管理</a></p> </div>";

            return View();
        }

        public JsonResult GetManu()
        {
         List<TreeMenus> listTree= GetTreeManus(UserData.ListManus);
         return Json(listTree);
        }
        public JsonResult GetNanue()
        {
            return Json(GetManu(), JsonRequestBehavior.AllowGet);

        }
        public ActionResult About()
        {
            ViewBag.Message = "你的应用程序说明页。";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "你的联系方式页。";

            return View();
        }
        /// <summary>
        /// 退出登录
        /// </summary>
        /// <returns></returns>
        public ActionResult loginOut()
        {
            UserData = null;
        
          return Json("OK", JsonRequestBehavior.AllowGet);
       
        }
        /// <summary>
        /// 修改密码
        /// </summary>
        /// <returns></returns>
        public ActionResult ChangePwd(string NewPwd, string OldPwd)
        {
            if (!OldPwd.Trim().Equals(UserData.Password))
            {
                return Json("旧密码不成确", JsonRequestBehavior.AllowGet);
            }
            else {

                 var mql = RMS_UserSet.SelectAll().Where(RMS_UserSet.Id.Equal(UserData.Id));
                RMS_User item = userBiz.GetEntity(mql);
                item.Password = NewPwd;
                item.WhereExpression = RMS_UserSet.Id.Equal(item.Id);
                if (userBiz.Update(item) > 0)
                {
                    UserData.Password = NewPwd;
                    return Json("密码修改成功", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json("密码修改失败", JsonRequestBehavior.AllowGet);
                }
             
            }
        }

        /// <summary>
        /// 转化数型菜单
        /// </summary>
        /// <param name="mql"></param>
        /// <returns></returns>
        public List<TreeMenus> GetTreeManus(List<Manu> list)
        {
            List<TreeMenus> resultList = new List<TreeMenus>();
            for (int i = 0; i < list.Count; i++)
            {
                if (list.Find(p => p.manuInfo.ManuId == list[i].manuInfo.ParentManuId) == null)//此项没有父级
                {
                    TreeMenus resultItem = new TreeMenus();
                    resultItem.Id = list[i].manuInfo.ManuId;
                    resultItem.ParentManuId = list[i].manuInfo.ParentManuId;
                    resultItem.OrderNo = list[i].manuInfo.OrderNo;
                    resultItem.Name = list[i].manuInfo.ManuName;
                    resultItem.iconCls = list[i].manuInfo.Icon;
                    resultItem.MIcon = list[i].manuInfo.MIcon;
                    resultItem.URL = list[i].manuInfo.URL;
                    List<TreeMenus> Son = GetTreeManus(list, list[i]);
                    resultItem.children = Son;
                    resultList.Add(resultItem);

                }

            }
            return resultList;
        }
        public List<TreeMenus> GetTreeManus(List<Manu> listAll, Manu item)
        {
            List<TreeMenus> resultList = new List<TreeMenus>();
            List<Manu> list = listAll.FindAll(p => p.manuInfo.ParentManuId == item.manuInfo.ManuId);
            for (int i = 0; i < list.Count; i++)
            {
                TreeMenus resultItem = new TreeMenus();
                resultItem.Id = list[i].manuInfo.ManuId;
                resultItem.ParentManuId = list[i].manuInfo.ParentManuId;
                resultItem.OrderNo = list[i].manuInfo.OrderNo;
                resultItem.Name = list[i].manuInfo.ManuName;
                resultItem.iconCls = list[i].manuInfo.Icon;
                resultItem.MIcon = list[i].manuInfo.MIcon;
                resultItem.URL = list[i].manuInfo.URL;
                List<TreeMenus> Son = GetTreeManus(listAll, list[i]);
                resultItem.children = Son;
                resultList.Add(resultItem);
            }
            return resultList;
        }
    }
}
