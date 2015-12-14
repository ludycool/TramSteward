
using e3net.common;
using e3net.DAL;
using e3net.IDAL;
using e3net.Mode;
using e3net.Mode.V_mode;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Text;

namespace e3net.BLL
{
  //  [Export(typeof(ISys_CityAreaDao))]
    public class Sys_CityAreaBiz : BaseDao<Sys_CityArea>, ISys_CityAreaDao
    {


        /// <summary>
        /// 词典树型数据生成json！！
        /// </summary>
        /// <returns></returns>
        public string GetTree(List<v_Sys_CityArea> list)
        {
            string menus = " [\n";
            for (int i = 0; i < list.Count; i++)
            {
                if (list.Find(p => p.Id == list[i].ParentId) == null)//此项没有父级
                {

                    menus += "{  \"Id\":\"" + list[i].Id + "\",";
                    menus += string.Format("  \"Name\":\"{0}\",", list[i].Name);
                    menus += string.Format("  \"ParentId\":\"{0}\",", list[i].ParentId);
                    menus += string.Format("  \"OrderNo\":\"{0}\",", list[i].OrderNo);
                    menus += string.Format("  \"Remarks\":\"{0}\",", list[i].Remarks);
                    menus += string.Format("  \"iconCls\":\"{0}\",", list[i].Icon);
                    menus += string.Format("  \"ValueName\":\"{0}\",", list[i].ValueName);
                    menus += string.Format("  \"AreaTypes\":\"{0}\",", list[i].AreaTypes);
                    menus += string.Format("  \"AreaTypesName\":\"{0}\",", list[i].AreaTypesName);
                    menus += GetSonTree(list, list[i]);//添加children
                    menus += "},";
                }
            }
            menus = menus.Substring(0, menus.Length - 1);
            menus = menus + "]";

            return menus;
        }
        private string GetSonTree(List<v_Sys_CityArea> listAll, v_Sys_CityArea SonItem)
        {
            string menus = "\"children\":[";
            List<v_Sys_CityArea> list = listAll.FindAll(p => p.ParentId.Equals(SonItem.Id));
            if (list != null && list.Count > 0)
            {
                for (int i = 0; i < list.Count; i++)
                {

                    menus += "{  \"Id\":\"" + list[i].Id + "\",";
                    menus += string.Format("  \"Name\":\"{0}\",", list[i].Name);
                    menus += string.Format("  \"ParentId\":\"{0}\",", list[i].ParentId);
                    menus += string.Format("  \"OrderNo\":\"{0}\",", list[i].OrderNo);
                    menus += string.Format("  \"Remarks\":\"{0}\",", list[i].Remarks);
                    menus += string.Format("  \"iconCls\":\"{0}\",", list[i].Icon);
                    menus += string.Format("  \"ValueName\":\"{0}\",", list[i].ValueName);
                    menus += string.Format("  \"AreaTypes\":\"{0}\",", list[i].AreaTypes);
                    menus += string.Format("  \"AreaTypesName\":\"{0}\",", list[i].AreaTypesName);
                    menus += GetSonTree(listAll, list[i]);//添加children
                    menus += "},";

                }
                menus = menus.Substring(0, menus.Length - 1);
            }
            menus = menus + "]";
            return menus;
        }
        /// <summary>
        /// 词典树型数据生成json！！
        /// </summary>
        /// <param name="Id">角色的Id</param>
        /// <returns></returns>
        public string GetCombotree(List<Sys_CityArea> list)
        {
            string menus = " [\n";
            for (int i = 0; i < list.Count; i++)
            {
                if (list.Find(p => p.Id == list[i].ParentId) == null)//此项没有父级
                {

                    menus += "{  \"Id\":\"" + list[i].ValueName + "\",";
                    menus += string.Format("  \"Name\":\"{0}\",", list[i].Name);
                    menus += string.Format("  \"iconCls\":\"{0}\",", list[i].Icon);
                    menus += GetSonGetCombotree(list, list[i]);//添加children
                    menus += "},";
                }
            }
            menus = menus.Substring(0, menus.Length - 1);
            menus = menus + "]";

            return menus;
        }
        private string GetSonGetCombotree(List<Sys_CityArea> listAll, Sys_CityArea SonItem)
        {
            string menus = "\"children\":[";
            List<Sys_CityArea> list = listAll.FindAll(p => p.ParentId.Equals(SonItem.Id));
            if (list != null && list.Count > 0)
            {
                for (int i = 0; i < list.Count; i++)
                {

                    menus += "{  \"Id\":\"" + list[i].ValueName + "\",";
                    menus += string.Format("  \"Name\":\"{0}\",", list[i].Name);
                    menus += string.Format("  \"iconCls\":\"{0}\",", list[i].Icon);
                    menus += GetSonGetCombotree(listAll, list[i]);//添加children
                    menus += "},";

                }
                menus = menus.Substring(0, menus.Length - 1);
            }
            menus = menus + "]";
            return menus;
        }

    }
}
