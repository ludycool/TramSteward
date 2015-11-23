using e3net.BLL;
using e3net.BLL.RMS;
using e3net.Mode.RMS;
using e3net.Mode.V_mode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using TZHSWEET.Common;

namespace ESUI.httpHandle
{
    /// <summary>
    /// loginHandler 的摘要说明
    /// </summary>
    public class loginHandler : IHttpHandler, IRequiresSessionState //就是这样显示的实现一下，不用实现什么方法
    {

        public RMS_UserRoleBiz URBiz = new RMS_UserRoleBiz();

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string action = context.Request["action"];
            string LoginName = context.Request["LoginName"];
            string Pwd = context.Request["Pwd"];
            switch (action)
            {

                case "Login":
                    if (context.Request.Cookies["User"] != null)
                    {
                        string UserDataString = context.Server.UrlDecode(context.Request.Cookies["User"]["UserInfo"]);
                        string ManusString = context.Server.UrlDecode(context.Request.Cookies["User"]["Manus"]);
                    }
                    AdminUserInfo UserData = null;
                    var sql = V_UserRoleSet.SelectAll().Where(V_UserRoleSet.LoginName.Equal(LoginName).And(V_UserRoleSet.Password.Equal(Pwd)));
                    List<V_UserRole> Rmodel = URBiz.GetOwnList<V_UserRole>(sql);
                    if (Rmodel != null && Rmodel.Count > 0) //添加权限配置
                    {

                        HttpCookie cookie = new HttpCookie("User");//初使化并设置Cookie的名称
                        DateTime dt = DateTime.Now;
                        TimeSpan ts = new TimeSpan(0, 1, 0, 0, 0);//过期时间为1分钟
                        cookie.Expires = dt.Add(ts);//设置过期时间



                        UserData = new AdminUserInfo();
                        UserData.UserInfo = Rmodel[0];

                        string ss = JsonHelper.ToJson(UserData.UserInfo, true);
                        string UserInfo = context.Server.UrlEncode(ss);
                        cookie.Values.Add("UserInfo", UserInfo);


                        List<V_RoleManus> manus = URBiz.GetOwnList<V_RoleManus>(V_RoleManusSet.SelectAll().Where(V_RoleManusSet.RoleId.Equal(UserData.UserInfo.RoleId)));//所有的菜单
                        List<V_RoleManuButtons> buttons = URBiz.GetOwnList<V_RoleManuButtons>(V_RoleManuButtonsSet.SelectAll().Where(V_RoleManuButtonsSet.RoleId.Equal(UserData.UserInfo.RoleId)));//角色拥有的菜单的所有按钮
                        List<V_MenuButtons> AllButtons = URBiz.GetOwnList<V_MenuButtons>(V_MenuButtonsSet.SelectAll());//所有菜单的所有按钮
                        List<Manu> ListManus = new List<Manu>();
                        if (manus != null && manus.Count > 0)
                        {

                            cookie.Values.Add("manusCount", manus.Count.ToString());//数量
                            for (int i = 0; i < manus.Count; i++)
                            {
                                Manu OneManu = new Manu();
                                OneManu.manuInfo = manus[i];
                                OneManu.ListButtons = buttons.FindAll(p => p.ManuId.Equals(manus[i].ManuId)).OrderBy(p => p.OrderNo).ToList();
                                OneManu.ManuAllButton = AllButtons.FindAll(p => p.ManuId.Equals(manus[i].ManuId));
                                ListManus.Add(OneManu);

                                //string info = JsonHelper.ToJson(OneManu.manuInfo, true);
                                //string manuInfo = context.Server.UrlEncode(info);
                                //cookie.Values.Add("manuInfo" + i, manuInfo);



                                //string btns = JsonHelper.ToJson(OneManu.manuInfo, true);
                                //string ListButtons = context.Server.UrlEncode(btns);
                                //cookie.Values.Add("ListButtons" + i, ListButtons);

                                //string allbtn = JsonHelper.ToJson(OneManu.manuInfo, true);
                                //string ManuAllButton = context.Server.UrlEncode(allbtn);
                                //cookie.Values.Add("ManuAllButton" + i, ManuAllButton);


                            }
                            UserData.ListManus = ListManus;

                        }



                        context.Response.AppendCookie(cookie);
                        context.Session["UserData"] = UserData;
                        context.Session["User"] = "我去你妹";
                        //  SystemLogsBiz.logv("登录", "controller：LoginController action: Login  登录session保存", "LoginController", "测试 sessionId=" + context.Session.SessionID);
                        SystemLogsBiz.logv("测试1", " Session[User] =" + context.Session["User"], "LoginController", "测试1 sessionId=" + context.Session.SessionID);

                        context.Response.Write("ok");
                    }
                    else
                    {
                        context.Response.Write("Nok");

                    }



                    break;
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}