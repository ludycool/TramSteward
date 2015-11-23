
using e3net.common;
using e3net.DAL;
using e3net.IDAL;
using e3net.Mode;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Text;

namespace e3net.BLL
{
  //  [Export(typeof(ISys_DictionaryDao))]
    public class Sys_DictionaryBiz : BaseDao<Sys_Dictionary>, ISys_DictionaryDao
    {


        public Sys_DictionaryBiz ()
        {
            SetDb(false, "HospitalBaseConnection");
        }

        /// <summary>
        /// 词典树型数据生成json！！
        /// </summary>
        /// <param name="Id">角色的Id</param>
        /// <returns></returns>
        public string GetTree(List<Sys_Dictionary> list)
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
                    menus += string.Format("  \"CreateTime\":\"{0}\",", list[i].CreateTime);
                    menus += string.Format("  \"ModifyTime\":\"{0}\",", list[i].ModifyTime);
                    menus += string.Format("  \"iconCls\":\"{0}\",", list[i].Icon);
                    menus += string.Format("  \"ValueName\":\"{0}\",", list[i].ValueName);
                    menus += GetSonTree(list, list[i]);//添加children
                    menus += "},";
                }
            }
            menus = menus.Substring(0, menus.Length - 1);
            menus = menus + "]";

            return menus;
        }
        private string GetSonTree(List<Sys_Dictionary> listAll, Sys_Dictionary SonItem)
        {
            string menus = "\"children\":[";
            List<Sys_Dictionary> list = listAll.FindAll(p => p.ParentId.Equals(SonItem.Id));
            if (list != null && list.Count > 0)
            {
                for (int i = 0; i < list.Count; i++)
                {

                    menus += "{  \"Id\":\"" + list[i].Id + "\",";
                    menus += string.Format("  \"Name\":\"{0}\",", list[i].Name);
                    menus += string.Format("  \"ParentId\":\"{0}\",", list[i].ParentId);
                    menus += string.Format("  \"OrderNo\":\"{0}\",", list[i].OrderNo);
                    menus += string.Format("  \"Remarks\":\"{0}\",", list[i].Remarks);
                    menus += string.Format("  \"CreateTime\":\"{0}\",", list[i].CreateTime);
                    menus += string.Format("  \"ModifyTime\":\"{0}\",", list[i].ModifyTime);
                    menus += string.Format("  \"iconCls\":\"{0}\",", list[i].Icon);
                    menus += string.Format("  \"ValueName\":\"{0}\",", list[i].ValueName);
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
        public string GetCombotree(List<Sys_Dictionary> list)
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
        private string GetSonGetCombotree(List<Sys_Dictionary> listAll, Sys_Dictionary SonItem)
        {
            string menus = "\"children\":[";
            List<Sys_Dictionary> list = listAll.FindAll(p => p.ParentId.Equals(SonItem.Id));
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
