
using e3net.common;
using e3net.DAL;
using e3net.IDAL.RMS;
using e3net.Mode.RMS;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Text;

namespace e3net.BLL.RMS
{
    //[Export(typeof(IRMS_DepartmentDao))]
    public class RMS_DepartmentBiz : BaseDao<RMS_Department>, IRMS_DepartmentDao
    {


        /// <summary>
        /// 获取某个角色的权限 数据不要乱改啊！！
        /// </summary>
        /// <param name="Id">角色的Id</param>
        /// <returns></returns>
        public string GetTree(List<RMS_Department> list)
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
                    menus += GetSonTree(list, list[i]);//添加children
                    menus += "},";
                }
            }
            menus = menus.Substring(0, menus.Length - 1);
            menus = menus + "]";

            return menus;
        }
        private string GetSonTree(List<RMS_Department> listAll, RMS_Department SonItem)
        {
            string menus = "\"children\":[";
            List<RMS_Department> list = listAll.FindAll(p => p.ParentId.Equals(SonItem.Id));
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

                    menus += GetSonTree(listAll, list[i]);//添加children
                    menus += "},";

                }
                menus = menus.Substring(0, menus.Length - 1);
            }
            menus = menus + "]";
            return menus;
        }
    }
}
