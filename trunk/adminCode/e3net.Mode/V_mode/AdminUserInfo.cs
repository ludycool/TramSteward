using e3net.Mode.RMS;
using e3net.Mode.TramStewardDB;
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
        /// <summary>
        /// 用户Id
        /// </summary>
        public Guid Id
        {
            get;
            set;

        }
        /// <summary>
        /// 用户名
        /// </summary>
        public string UserName
        {
            get;
            set;
        }
        /// <summary>
        /// 密码
        /// </summary>
        public string Password
        {
            get;
            set;
        }
        public Guid DepartmentId
        {
            get;
            set;
        
        }
        /// <summary>
        /// 角色Id
        /// </summary>
        public Guid? RoleId
        {
            get;
            set;
        }
        /// <summary>
        /// 用户类型
        /// </summary>
        public UserType UserTypes
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
        ///// <summary>
        ///// 管理员用户信息
        ///// </summary>
        //public V_UserRole adminUserInfo
        //{
        //    get;
        //    set;
        //}
        ///// <summary>
        ///// 商家用户信息
        ///// </summary>
        //public v_TS_ShopUserRole shopUserInfo
        //{
        //    get;
        //    set;
        //}
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
