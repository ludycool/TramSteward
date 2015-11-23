﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.common.SysMode
{
    public class PageClass
    {
        /// <summary>
        /// 总页数输出
        /// </summary>
        public int PCount { get; set; }   // --
        /// <summary>
        /// 总记录数输出
        /// </summary>
        public int RCount { get; set; }   //--
        /// <summary>
        /// 查询表名
        /// </summary>
        public string sys_Table { get; set; }  // --
        /// <summary>
        /// 主键
        /// </summary>
        public string sys_Key { get; set; }     // --
        /// <summary>
        /// 查询字段
        /// </summary>
        public string sys_Fields { get; set; }  //  --
        /// <summary>
        /// 查询条件
        /// </summary>
        public string sys_Where { get; set; }   // --
        /// <summary>
        /// 排序字段
        /// </summary>
        public string sys_Order { get; set; }   //--
        /// <summary>
        /// 开始位置
        /// </summary>
        public int sys_Begin { get; set; }        //--
        /// <summary>
        /// 当前页数
        /// </summary>
        public int sys_PageIndex { get; set; }     //  --
        /// <summary>
        /// 页大小
        /// </summary>

        public int sys_PageSize { get; set; } // --
    }
}
