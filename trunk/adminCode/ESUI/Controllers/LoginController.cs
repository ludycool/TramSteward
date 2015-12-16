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
using e3net.Mode.TramStewardDB;

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

            ViewData["UserType"] = GenerateList();
            if (Session["ValidateCode"] != null)
            {
                //if (Request.Cookies["User"] != null)//Cookies保存 获取解析
                //{
                //    HttpCookie cookie = new HttpCookie("User");//初使化并设置Cookie的名称
                //    DateTime dt = DateTime.Now;
                //    TimeSpan ts = new TimeSpan(0, 1, 0, 0, 0);//过期时间为1分钟
                //    cookie.Expires = dt.Add(ts);//设置过期时间
                //    string info = JsonHelper.ToJson(UserData.ListManus, true);
                //    string manuInfo = Server.HtmlEncode(info);
                //    cookie.Values.Add("Manus", manuInfo);

                //    string UserDataString = Server.HtmlEncode(Request.Cookies["User"]["UserInfo"]);
                //    string ManusString = Server.HtmlEncode(Request.Cookies["User"]["Manus"]);
                //    V_UserRole Rmodel = JsonHelper.FromJson<V_UserRole>(UserDataString);
                //}


                string Vcode = Session["ValidateCode"].ToString();
                if (mode.VCode.Trim().Equals(Vcode))//验证码
                {

                    UserData = null;
                    List<V_UserRole> adminRole =null;
                    List<v_TS_ShopUserRole> shopRole = null;
                    if (mode.UserType == "0")//根据用户类型去找数据
                    {
                        var sql = V_UserRoleSet.SelectAll().Where(V_UserRoleSet.LoginName.Equal(mode.LoginName).And(V_UserRoleSet.Password.Equal(mode.Password)));
                        adminRole = URBiz.GetOwnList<V_UserRole>(sql);
                    }
                    else {
                        var sql = v_TS_ShopUserRoleSet.SelectAll().Where(v_TS_ShopUserRoleSet.UserName.Equal(mode.LoginName).And(v_TS_ShopUserRoleSet.Pwd.Equal(mode.Password)));
                        shopRole = URBiz.GetOwnList<v_TS_ShopUserRole>(sql);
                    }

                    if ((adminRole != null && adminRole.Count>0) ||( shopRole != null&&shopRole.Count>0)) // 账号是否存在，添加权限配置
                    {
                        UserData = new AdminUserInfo();
                        if (mode.UserType == "0")// 商家为1 管理员为0 缓存用户信息
                        {
                            UserData.UserTypes = UserType.admin;
                           // UserData.adminUserInfo = adminRole[0];
                            UserData.Id = adminRole[0].Id;
                            UserData.UserName = adminRole[0].LoginName;
                            UserData.RoleId = adminRole[0].RoleId;
                            UserData.Password = adminRole[0].Password;
                        }
                        else {
                            UserData.UserTypes = UserType.ShopUser;
                          // UserData.shopUserInfo = shopRole[0];
                            UserData.Id = shopRole[0].Id;
                            UserData.UserName = shopRole[0].UserName;
                            UserData.RoleId = shopRole[0].RoleId;
                            UserData.Password = shopRole[0].Pwd;
                        }
                        List<V_RoleManus> manus = URBiz.GetOwnList<V_RoleManus>(V_RoleManusSet.SelectAll().Where(V_RoleManusSet.RoleId.Equal(UserData.RoleId)));//所有的菜单
                        List<V_RoleManuButtons> buttons = URBiz.GetOwnList<V_RoleManuButtons>(V_RoleManuButtonsSet.SelectAll().Where(V_RoleManuButtonsSet.RoleId.Equal(UserData.RoleId)));//角色拥有的菜单的所有按钮
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
