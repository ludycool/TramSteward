using e3net.Mode.RMS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.Mode.V_mode
{
    /// <summary>
    /// 个人信息
    /// </summary>
    public class AdminUserInfo
    {
        public V_UserRole UserInfo
        {
            get;
            set;
        }
        /// <summary>
        /// 拥有的菜单
        /// </summary>
        public List<Manu> ListManus
        {
            get;
            set;
        }
        public int UserType
        {
            get;
            set;

        }
    }
    /// <summary>
    /// 用户类型
    /// </summary>
    public enum UserType
    {
        admin = 0,//管理员
        ShopUser = 1,//商家
    }
    /// <summary>
    ///菜单
    /// </summary>
    public class Manu
    {
        public V_RoleManus manuInfo
        {
            get;
            set;
        }
        /// <summary>
        /// 这个菜单所有的按钮
        /// </summary>
        public List<V_MenuButtons> ManuAllButton
        {
            get;
            set;
        }
        /// <summary>
        /// 拥有的按钮
        /// </summary>
        public List<V_RoleManuButtons> ListButtons
        {
            get;
            set;
        }

    }
}
