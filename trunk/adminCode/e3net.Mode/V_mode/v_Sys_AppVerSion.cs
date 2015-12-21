using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.V_mode
{

    [Table("[v_Sys_AppVerSion]", DbType.SqlServer)]

    public partial class v_Sys_AppVerSion : EntityBase
    {

        /// <summary>
        /// 
        /// </summary>
        public Int32 Id
        {
            get { return GetPropertyValue<Int32>("Id"); }
            set { SetPropertyValue("Id", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Category
        {
            get { return GetPropertyValue<String>("Category"); }
            set { SetPropertyValue("Category", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String TName
        {
            get { return GetPropertyValue<String>("TName"); }
            set { SetPropertyValue("TName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Version
        {
            get { return GetPropertyValue<String>("Version"); }
            set { SetPropertyValue("Version", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Url
        {
            get { return GetPropertyValue<String>("Url"); }
            set { SetPropertyValue("Url", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Remarks
        {
            get { return GetPropertyValue<String>("Remarks"); }
            set { SetPropertyValue("Remarks", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? AddTime
        {
            get { return GetPropertyValue<DateTime?>("AddTime"); }
            set { SetPropertyValue("AddTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? UpdateTime
        {
            get { return GetPropertyValue<DateTime?>("UpdateTime"); }
            set { SetPropertyValue("UpdateTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? States
        {
            get { return GetPropertyValue<Int32?>("States"); }
            set { SetPropertyValue("States", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CategoryName
        {
            get { return GetPropertyValue<String>("CategoryName"); }
            set { SetPropertyValue("CategoryName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? isDeleted
        {
            get { return GetPropertyValue<Boolean?>("isDeleted"); }
            set { SetPropertyValue("isDeleted", value); }
        }
    }

    [Table("[v_Sys_AppVerSion]", DbType.SqlServer)]
    public  partial class v_Sys_AppVerSionSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[v_Sys_AppVerSion]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[v_Sys_AppVerSion]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[v_Sys_AppVerSion]", FieldType.Common, "[Id]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[v_Sys_AppVerSion]", FieldType.Common, "[Category]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase TName = new FieldBase(DbType.SqlServer, "[v_Sys_AppVerSion]", FieldType.Common, "[TName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Version = new FieldBase(DbType.SqlServer, "[v_Sys_AppVerSion]", FieldType.Common, "[Version]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Url = new FieldBase(DbType.SqlServer, "[v_Sys_AppVerSion]", FieldType.Common, "[Url]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[v_Sys_AppVerSion]", FieldType.Common, "[Remarks]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[v_Sys_AppVerSion]", FieldType.Common, "[AddTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[v_Sys_AppVerSion]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[v_Sys_AppVerSion]", FieldType.Common, "[States]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CategoryName = new FieldBase(DbType.SqlServer, "[v_Sys_AppVerSion]", FieldType.Common, "[CategoryName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[v_Sys_AppVerSion]", FieldType.Common, "[isDeleted]");
    }

}
