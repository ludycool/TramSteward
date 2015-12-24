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
using e3net.Mode.HttpView;

namespace ESUI.Controllers
{
    //[Export]
    public class RoleController : BaseController
    {
        //[Import(typeof(IRMS_RoleDao))]
        //  public IRMS_RoleDao RDBiz { get; set; }

        [Dependency]
        public RMS_RoleBiz RDBiz { get; set; }
        // public RMS_RoleBiz RDBiz = new RMS_RoleBiz();
        //[Import(typeof(IRMS_RoleManusDao))]
        //  public IRMS_RoleManusDao RMBiz { get; set; }
        [Dependency]
        public RMS_RoleManusBiz RMBiz { get; set; }
        //    public RMS_RoleManusBiz RMBiz = new RMS_RoleManusBiz();
        //[Import(typeof(IRMS_RoleManuButtonsDao))]
        // public IRMS_RoleManuButtonsDao RMBBiz { get; set; }
        //  public RMS_RoleManuButtonsBiz RMBBiz = new RMS_RoleManuButtonsBiz();
        [Dependency]
        public RMS_RoleManuButtonsBiz RMBBiz { get; set; }
        //[Import(typeof(IRMS_MenuButtonsDao))]
        //   public IRMS_MenuButtonsDao MBBiz { get; set; }
        //   public RMS_MenuButtonsBiz MBBiz = new RMS_MenuButtonsBiz();

        [Dependency]
        public RMS_MenuButtonsBiz MBBiz { get; set; }
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
            pc.sys_Table = "V_Role";
            pc.sys_Where = "1=1";
            pc.sys_Order = "Id";
            if (!UserData.RoleId.ToString().Equals("fb38f312-0078-4f44-9cda-1183c8042db8"))//不是系统管理员，不请允许显示系统管理员
            {
                pc.sys_Where += " and Id!='fb38f312-0078-4f44-9cda-1183c8042db8'";
            }

            List<V_Role> list2 = RDBiz.GetPagingData<V_Role>(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = RMS_RoleSet.ControlId.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);

            return Json(dic, JsonRequestBehavior.AllowGet);
        }
        public JsonResult EditInfo(RMS_Role RMS_RoleModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;

            RMS_RoleModle.ModifyTime = DateTime.Now;
            if (!(RMS_RoleModle.Id != null && !RMS_RoleModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
                RMS_RoleModle.CreateTime = DateTime.Now;
                RMS_RoleModle.Id = Guid.NewGuid();
            }
            if (IsAdd)
            {

                RMS_RoleModle.ModifyBy = "1";
                RMS_RoleModle.CreateBy = "1";

                try
                {
                    RDBiz.Add(RMS_RoleModle);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = RMS_RoleModle.Id.ToString();
                    ReSultMode.Msg = "添加成功";
                }
                catch (Exception e)
                {

                    ReSultMode.Code = -11;
                    ReSultMode.Data = e.ToString();
                    ReSultMode.Msg = "添加失败";
                }

            }
            else
            {
                RMS_RoleModle.WhereExpression = RMS_RoleSet.Id.Equal(RMS_RoleModle.Id);
                RMS_RoleModle.ChangedMap.Remove("id");//移除主键值
                if (RDBiz.Update(RMS_RoleModle) > 0)
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
            var mql2 = RMS_RoleSet.SelectAll().Where(RMS_RoleSet.Id.Equal(ID));
            RMS_Role Rmodel = RDBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }


        public JsonResult DeleteInfo(string ID)
        {

            var mql2 = RMS_RoleSet.Id.Equal(ID);
            int f = RDBiz.Remove<RMS_RoleSet>(mql2);
            return Json("OK", JsonRequestBehavior.AllowGet);

        }
        /// <summary>
        /// 获取某个角色的权限 数据不要乱改啊！！
        /// </summary>
        /// <param name="Id">角色的Id</param>
        /// <returns></returns>
        public string GetManeOP(string Id)
        {
            string menus = " [\n";
            var sql = RMS_MenusSet.SelectAll();
            List<RMS_Menus> list = RDBiz.GetOwnList<RMS_Menus>(sql);//所有的菜单集
            List<RMS_Buttons> listControlButtons = RDBiz.GetOwnList<RMS_Buttons>(RMS_ButtonsSet.SelectAll());//所有的按钮
            List<RMS_RoleManus> listRoleColumns = RDBiz.GetOwnList<RMS_RoleManus>(RMS_RoleManusSet.SelectAll().Where(RMS_RoleManusSet.RoleId.Equal(Id)));//这个角色已经添加的菜单
            List<V_RoleManuButtons> listRoleMenuButtons = RDBiz.GetOwnList<V_RoleManuButtons>(V_RoleManuButtonsSet.SelectAll().Where(V_RoleManuButtonsSet.RoleId.Equal(Id)));//这个角色已经添加的角色按钮
            for (int i = 0; i < list.Count; i++)
            {
                if (list.Find(p => p.Id == list[i].ParentManuId) == null)//此项没有父级
                {

                    menus += "{  \"MenuId\":\"" + list[i].Id + "\",";
                    menus += string.Format("  \"Name\":\"{0}\",", list[i].ManuName);
                    menus += string.Format("  \"iconCls\":\"{0}\",", list[i].Icon);
                    string ControlId_Browse = "0";
                    RMS_RoleManus rcItem = listRoleColumns.Find(p => p.ManuId.Equals(list[i].Id));

                    if (rcItem != null)
                    {
                        ControlId_Browse = "1";//如果存在

                    }
                    menus += string.Format("  \"ControlId_Browse\":\"{0}\",", ControlId_Browse);
                    foreach (RMS_Buttons dd in listControlButtons)//添加列的数据
                    {

                        string Ishave = "0";


                        V_RoleManuButtons rmbItem = listRoleMenuButtons.Find(p => p.Id.Equals(dd.Id) && p.ManuId.Equals(list[i].Id));

                        if (rmbItem != null)
                        {
                            Ishave = "1";//如果角色有此按钮存在

                        }

                        menus += string.Format("\"ControlId_{0}\":\"{1}\",", dd.Id, Ishave);

                    }
                    menus += GetSonTreeManu(list, list[i], listControlButtons, listRoleColumns, listRoleMenuButtons);//添加children
                    menus += "},";
                }
            }
            menus = menus.Substring(0, menus.Length - 1);
            menus = menus + "]";

            return menus;
        }
        private string GetSonTreeManu(List<RMS_Menus> listAll, RMS_Menus SonItem, List<RMS_Buttons> listControlButtons, List<RMS_RoleManus> listRoleColumns, List<V_RoleManuButtons> listRoleMenuButtons)
        {
            string menus = "\"children\":[";
            List<RMS_Menus> list = listAll.FindAll(p => p.ParentManuId.Equals(SonItem.Id));
            if (list != null && list.Count > 0)
            {
                for (int i = 0; i < list.Count; i++)
                {


                    menus += "{  \"MenuId\":\"" + list[i].Id + "\",";
                    menus += string.Format("  \"Name\":\"{0}\",", list[i].ManuName);
                    menus += string.Format("  \"iconCls\":\"{0}\",", list[i].Icon);
                    string ControlId_Browse = "0";
                    RMS_RoleManus rcItem = listRoleColumns.Find(p => p.ManuId.Equals(list[i].Id));

                    if (rcItem != null)
                    {
                        ControlId_Browse = "1";//如果存在

                    }
                    menus += string.Format("  \"ControlId_Browse\":\"{0}\",", ControlId_Browse);
                    foreach (RMS_Buttons dd in listControlButtons)//添加列的数据
                    {

                        string Ishave = "0";

                        V_RoleManuButtons rmbItem = listRoleMenuButtons.Find(p => p.Id.Equals(dd.Id) && p.ManuId.Equals(list[i].Id));

                        if (rmbItem != null)
                        {
                            Ishave = "1";//如果角色有此按钮存在

                        }

                        menus += string.Format("\"ControlId_{0}\":\"{1}\",", dd.Id, Ishave);

                    }
                    menus += GetSonTreeManu(listAll, list[i], listControlButtons, listRoleColumns, listRoleMenuButtons);//添加children
                    menus += "},";

                }
                menus = menus.Substring(0, menus.Length - 1);
            }
            menus = menus + "]";
            return menus;
        }
        /// <summary>
        /// 获取列
        /// </summary>
        /// <returns></returns>
        public string GetBtnColumn()
        {

            string menus = " [\n";
            var sql = RMS_ButtonsSet.SelectAll();
            List<RMS_Buttons> list = RDBiz.GetOwnList<RMS_Buttons>(sql);
            if (list != null)
            {
                menus += "{  ";

                menus += "title:\"名称\",field:\"Name\", width: 100";
                menus += "},";
                menus += "{  ";

                menus += "title:\"浏览\",field:\"ControlId_Browse\", width: 30,editor:{type:'checkbox',options:{on:'1',off:'0'}}, formatter: formatCheck";
                menus += "},";

                foreach (RMS_Buttons item in list)
                {
                    menus += "{  ";

                    menus += "title:\"" + item.ButtonName + "\",field:\"ControlId_" + item.Id + "\", width: 30,editor:{type:'checkbox',options:{on:'1',off:'0'}}, formatter: formatCheck";
                    menus += "},";
                }

            }

            menus = menus.Substring(0, menus.Length - 1);
            menus = menus + "]";

            return menus;

        }

        /// <summary>
        /// 获取每个菜单有的按钮
        /// </summary>
        /// <returns></returns>
        public JsonResult GetMenuButtonsData()
        {
            List<RMS_MenuButtons> listMenuButtons = RDBiz.GetOwnList<RMS_MenuButtons>(RMS_MenuButtonsSet.SelectAll());//所有的菜单的按钮
            return Json(listMenuButtons);
        }

        public string SaveRoleOP(string RoleManus, string RoleManuButtons, string RoleId)
        {
            Guid roleid = Guid.Parse(RoleId);
            List<string> manu = RoleManus.Split('_').ToList();
            int res = 0;
            var mql2 = RMS_RoleManusSet.RoleId.Equal(roleid);
            int f = RMBiz.Remove<RMS_RoleManusSet>(mql2);
            for (int i = 0; i < manu.Count; i++)
            {

                if (!string.IsNullOrEmpty(manu[i]))
                {
                    RMS_RoleManus item = new RMS_RoleManus();
                    item.Id = Guid.NewGuid();
                    item.RoleId = roleid;
                    item.ManuId = Guid.Parse(manu[i]);
                    RMBiz.Add(item);
                    res++;
                }
            }


            List<string> ManuButtons = RoleManuButtons.Split('_').ToList();
            var mql = RMS_RoleManuButtonsSet.RoleId.Equal(roleid);
            int ff = RMBBiz.Remove<RMS_RoleManuButtonsSet>(mql);
            for (int i = 0; i < ManuButtons.Count; i++)
            {

                RMS_RoleManuButtons item = new RMS_RoleManuButtons();
                item.Id = Guid.NewGuid();
                string[] data = ManuButtons[i].Split(':');
                if (!string.IsNullOrEmpty(data[0]) && !string.IsNullOrEmpty(data[1]))
                {
                    item.RoleId = roleid;
                    var sql = RMS_MenuButtonsSet.SelectAll().Where(RMS_MenuButtonsSet.ManuId.Equal(Guid.Parse(data[0])).And(RMS_MenuButtonsSet.ButtonId.Equal(Guid.Parse(data[1]))));
                    RMS_MenuButtons bItem = MBBiz.GetEntity(sql);
                    if (bItem != null)
                    {

                        item.MenuButtonsId = bItem.Id;
                    }

                    RMBBiz.Add(item);
                    res++;
                }
            }
            if (res == manu.Count + ManuButtons.Count)
            {
                return "ok";
            }
            else
            {
                return "Nok";
            }
        }
    }
}
