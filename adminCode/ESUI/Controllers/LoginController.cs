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
using e3net.BLL;
using e3net.Mode.V_mode;
using TZHSWEET.Common;
using ESUI.Models;
using WebMatrix.WebData;
using e3net.tools;

namespace ESUI.Controllers
{
    //[Export]
    public class LoginController : BaseController
    {
        //
        // GET: /Login/
        //[Import(typeof(IRMS_UserRoleDao))]
        //  public IRMS_UserRoleDao URBiz { get; set; }
        //  public RMS_UserRoleBiz URBiz = new RMS_UserRoleBiz();
        /// <summary>
        /// 业务层注入
        /// </summary>
        [Dependency]
        public RMS_UserRoleBiz URBiz { get; set; }
        public ActionResult Index()
        {
            ViewData["UserType"] = GenerateList();
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        //[ValidateAntiForgeryToken] 安全必须 外网出错 所需的防伪 Cookie“__RequestVerificationToken”不存在。 暂时去掉，待解决
        public ActionResult Index(LoginModel mode)
        {
           // if (ModelState.IsValid)
            if (Session["ValidateCode"] != null)
            {
                string Vcode = Session["ValidateCode"].ToString();
                if (mode.VCode.Trim().Equals(Vcode))//验证码
                {

                    UserData = null;
                    var sql = V_UserRoleSet.SelectAll().Where(V_UserRoleSet.LoginName.Equal(mode.LoginName).And(V_UserRoleSet.Password.Equal(mode.Password)));

                    List<V_UserRole> Rmodel = URBiz.GetOwnList<V_UserRole>(sql);
                    if (Rmodel != null && Rmodel.Count > 0) // 账号是否存在，添加权限配置
                    {


                        UserData = new AdminUserInfo();
                        UserData.UserInfo = Rmodel[0];
                        List<V_RoleManus> manus = URBiz.GetOwnList<V_RoleManus>(V_RoleManusSet.SelectAll().Where(V_RoleManusSet.RoleId.Equal(UserData.UserInfo.RoleId)));//所有的菜单
                        List<V_RoleManuButtons> buttons = URBiz.GetOwnList<V_RoleManuButtons>(V_RoleManuButtonsSet.SelectAll().Where(V_RoleManuButtonsSet.RoleId.Equal(UserData.UserInfo.RoleId)));//角色拥有的菜单的所有按钮
                        List<V_MenuButtons> AllButtons = URBiz.GetOwnList<V_MenuButtons>(V_MenuButtonsSet.SelectAll());//所有菜单的所有按钮
                        List<Manu> ListManus = new List<Manu>();
                        if (manus != null && manus.Count > 0)
                        {
                            foreach (V_RoleManus item in manus)
                            {
                                Manu OneManu = new Manu();
                                OneManu.manuInfo = item;
                                OneManu.ListButtons = buttons.FindAll(p => p.ManuId.Equals(item.ManuId)).OrderBy(p => p.OrderNo).ToList();
                                OneManu.ManuAllButton = AllButtons.FindAll(p => p.ManuId.Equals(item.ManuId));
                                ListManus.Add(OneManu);
                            }
                            UserData.ListManus = ListManus;
                        }
                        return RedirectToAction("index", "home");
                    }
                    else
                    {
                        //  return RedirectToAction("index", "Login");
                        // 如果我们进行到这一步时某个地方出错，则重新显示表单
                        ViewData["IsShowAlert"] = true;
                        ViewData["Alert"] = "账号或者密码有误";

                    }
                }
                else
                {
                    ViewData["IsShowAlert"] = true;
                    ViewData["Alert"] = "验证码有误";
                }
            }
            return View();


        }

        /// 生成验证码图像对象

        /// </summary>

        /// <returns></returns>

        public ActionResult GetValidateCode()
        {

            ValidateCode vCode = new ValidateCode();

            string code = vCode.CreateValidateCode(4);

            Session["ValidateCode"] = code;

            byte[] bytes = vCode.CreateValidateGraphic(code);

            return File(bytes, @"image/jpeg");
        }

        public static SelectList GenerateList()
        {
            List<SelectListItem> items = new List<SelectListItem>()
            {
                new SelectListItem(){Text="商家", Value="1"},
                new SelectListItem(){Text="管理员", Value="0"}
            };

            SelectList generateList = new SelectList(items, "Value", "Text");

            return generateList;
        }
        
    }
}
