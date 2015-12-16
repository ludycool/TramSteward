using e3net.BLL;
using e3net.BLL.RMS;
using e3net.Mode;
using e3net.Mode.RMS;
using e3net.Mode.TramStewardDB;
using e3net.Mode.V_mode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.httpHandle
{
    /// <summary>
    /// DictionaryHandler 的摘要说明
    /// </summary>
    public class DictionaryHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
    {
        public Sys_DictionaryBiz OPBiz = new Sys_DictionaryBiz();
        public void ProcessRequest(HttpContext context)
        {
            string action = context.Request["action"];
            context.Response.ContentType = "text/plain";
            //  context.Response.Write("Hello World");
            switch (action)
            {

                case "GetSonDictionary":

                    string ValueName = context.Request["ValueName"];
                    context.Response.Write(GetSonDictionary(ValueName));
                    context.Response.End();

                    break;
                case "GetSonDictionaryNo"://除掉本身只要子集

                    string ValueNameNO = context.Request["ValueName"];
                    context.Response.Write(GetSonDictionaryNo(ValueNameNO));
                    context.Response.End();

                    break;
                case "GetSysItem"://获取自定义词典

                    string ItemType = context.Request["ItemType"];
                    context.Response.Write(GetSysItem(ItemType));
                    context.Response.End();

                    break;
                case "GetShop"://自己添加的店铺

                    context.Response.Write(GetShop(context));
                    context.Response.End();

                    break;
                case "GetSys_CityArea"://自己添加的店铺

                    context.Response.Write(GetSys_CityArea(context));
                    context.Response.End();

                    break;
                case "GetDepartment"://获取部门
                    context.Response.Write(GetDepartment());
                    context.Response.End();

                    break;
            }
        }
        public string GetDepartment()
        {
            RMS_DepartmentBiz DDBiz = new RMS_DepartmentBiz();
            var sql = RMS_DepartmentSet.SelectAll();
            List<RMS_Department> listAll = DDBiz.GetOwnList<RMS_Department>(sql);
            string jsonstring = DDBiz.GetTree(listAll);
            return jsonstring;
        }


        public string GetSys_CityArea(HttpContext context)
        {
            List<Sys_CityArea> AllList = new List<Sys_CityArea>();
            var sql = Sys_CityAreaSet.SelectAll();
            AllList = OPBiz.GetOwnList<Sys_CityArea>(sql);
           
            return JsonHelper.ToJson(AllList, true);

        }
        /// <summary>
        /// 返回店铺给下拉控件
        /// </summary>
        /// <returns></returns>
        public string GetShop(HttpContext context)
        {
            List<TS_Shop> AllList = new List<TS_Shop>();
            if (context.Session["UserData"] != null)
            {
                AdminUserInfo UserData = context.Session["UserData"] as AdminUserInfo;
                if (UserData.UserTypes != UserType.admin)//不是管理员只能返回自己添加的
                {
                    var sql = TS_ShopSet.SelectAll().Where(TS_ShopSet.CreateManId.Equal(UserData.Id));
                    AllList = OPBiz.GetOwnList<TS_Shop>(sql);
                }
                else {
                    var sql = TS_ShopSet.SelectAll();
                    AllList = OPBiz.GetOwnList<TS_Shop>(sql);
                }
              
            }
            return JsonHelper.ToJson(AllList, true);

        }
        public string GetSysItem(string ItemType)
        {
            var sql = SysItemSet.SelectAll().Where(SysItemSet.ItemType.Equal(ItemType)).OrderByASC(SysItemSet.OrderID);
            List<SysItem> AllList = OPBiz.GetOwnList<SysItem>(sql);
            return JsonHelper.ToJson(AllList, true);

        }
        public string GetSonDictionary(string ValueName)
        {
            string jsonstring = "[]";
            var sql = Sys_DictionarySet.SelectAll().Where(Sys_DictionarySet.ValueName.StartWith(ValueName));
            List<Sys_Dictionary> listAll = OPBiz.GetOwnList<Sys_Dictionary>(sql);
            jsonstring = OPBiz.GetCombotree(listAll);


            return jsonstring;
        }
        public string GetSonDictionaryNo(string ValueName)
        {
            string jsonstring = "[]";
            var sql = Sys_DictionarySet.SelectAll().Where(Sys_DictionarySet.ValueName.StartWith(ValueName));
            List<Sys_Dictionary> listAll = OPBiz.GetOwnList<Sys_Dictionary>(sql);
            if (listAll != null && listAll.Count > 0)
            {
                for (int i = 0; i < listAll.Count; i++)
                {
                    if (listAll[i].ValueName.Equals(ValueName))//去除父级
                    {
                        listAll.Remove(listAll[i]);
                        break;
                    }
                }
                jsonstring = OPBiz.GetCombotree(listAll);
            }

            return jsonstring;
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