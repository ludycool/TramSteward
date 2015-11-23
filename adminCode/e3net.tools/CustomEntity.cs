// ***********************************************************************
// Assembly         : WindowsFormsApplication1
// Author           : czc
// Created          : 12-29-2013
//
// Last Modified By : czc
// Last Modified On : 12-29-2013
// ***********************************************************************
// <copyright file="Class1.cs" company="Microsoft">
//     Copyright (c) Microsoft. All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CommonFunction;

/// <summary>
/// The WindowsFormsApplication1 namespace.
/// </summary>
namespace WindowsFormsApplication1
{
    /// <summary>
    /// Class Class1.
    /// </summary>
   public  class CustomEntity
   {

       /// <summary>
       /// 字段名
       /// </summary>
       private string fieldname;
       /// <summary>
       /// 写入字段类型如整型，bool类型，时间类型
       /// </summary>
       private string customsheettype;
       /// <summary>
       /// 约束判断
       /// </summary>
       private string uniqueness;

       /// <summary>
       /// 来自哪个表
       /// </summary>
        private string fromtable;

        /// <summary>
        /// 错误输出
        /// </summary>
        private Dictionary<object,object> _error;
        /// <summary>
        /// 字段名
        /// </summary>
        /// <value>The fieldname.</value>
        public string Fieldname
        {
            get { return fieldname; }
            set { fieldname = value; }
        }

        /// <summary>
        /// 来自哪个表
        /// </summary>
        /// <value>The fromtable.</value>
        public string Fromtable
        {
            get { return fromtable; }
            set { fromtable = value; }
        }

        /// <summary>
        /// 约束判断
        /// </summary>
        public string  Uniqueness
        {
            get { return uniqueness; }
            set { uniqueness = value; }
        }

        /// <summary>
        /// 错误输出
        /// </summary>
        /// <value>The error.</value>
        public Dictionary<object, object> Error
        {
            get { return _error; }
            set { _error = value; }
        }

        /// <summary>
        /// 写入字段类型如整型，bool类型，时间类型
        /// </summary>
        public string Customsheettype
        {
            get { return customsheettype; }
            set { customsheettype = value; }
        }
   }
}
