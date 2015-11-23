
using e3net.common;
using e3net.common.SysMode;
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
    //[Export(typeof(IRMS_MenusDao))]
    public class RMS_MenusBiz : BaseDao<RMS_Menus>, IRMS_MenusDao
    {

          /// <summary>
        /// 转化数型菜单
        /// </summary>
        /// <param name="mql"></param>
        /// <returns></returns>
        public List<TreeMenus> GetTreeManus(List<RMS_Menus> list)
        {
            List<TreeMenus> resultList = new List<TreeMenus>();
            for (int i = 0; i < list.Count; i++)
            {
                if (list.Find(p => p.Id == list[i].ParentManuId)==null)//此项没有父级
                {
                    TreeMenus resultItem = new TreeMenus();
                    resultItem.Id = list[i].Id;
                    resultItem.ParentManuId = list[i].ParentManuId;
                    resultItem.OrderNo = list[i].OrderNo;
                    resultItem.Name = list[i].ManuName;
                    resultItem.iconCls = list[i].Icon;
                    resultItem.MIcon = list[i].MIcon;
                    resultItem.URL = list[i].URL;
                    List<TreeMenus> Son = GetTreeManus(list, list[i]);
                    resultItem.children = Son;
                    resultList.Add(resultItem);
                
                }

            }
            return resultList;
        }
        public List<TreeMenus> GetTreeManus(List<RMS_Menus> listAll,RMS_Menus item )
        {
            List<TreeMenus> resultList = new List<TreeMenus>();
            List<RMS_Menus> list = listAll.FindAll(p => p.ParentManuId == item.Id);
            for (int i = 0; i < list.Count; i++)
            {
                
                    TreeMenus resultItem = new TreeMenus();
                    resultItem.Id = list[i].Id;
                    resultItem.ParentManuId = list[i].ParentManuId;
                    resultItem.OrderNo = list[i].OrderNo;
                    resultItem.Name = list[i].ManuName;
                    resultItem.iconCls = list[i].Icon;
                    resultItem.MIcon = list[i].MIcon;
                    resultItem.URL = list[i].URL;
                    List<TreeMenus> Son = GetTreeManus(listAll, list[i]);
                    resultItem.children = Son;
                    resultList.Add(resultItem);
            }
            return resultList;
        }


      
    }
}
