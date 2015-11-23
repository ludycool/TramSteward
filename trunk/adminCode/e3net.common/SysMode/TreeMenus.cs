using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
namespace e3net.common.SysMode
{

    /// <summary>
    /// 数型菜单数据
    /// </summary>
    public class TreeMenus
    {
        public Guid Id
        {
            get;
            set;
        }
        public Guid? ParentManuId
        {
            get;
            set;
        }
        public Int32? OrderNo
        {
            get;
            set;
        }
        public String Name
        {
            get;
            set;
        }
        public String URL
        {
            get;
            set;
        }
        public String iconCls
        {
            get;
            set;
        }
        public String MIcon
        {
            get;
            set;
        }
        public List<TreeMenus> children { get; set; }

    }

   

}
