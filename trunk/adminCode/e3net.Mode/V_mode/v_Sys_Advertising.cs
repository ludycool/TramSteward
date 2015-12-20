using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.V_mode
{

    [Table("[v_Sys_Advertising]", DbType.SqlServer)]

    public partial class v_Sys_Advertising : EntityBase
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
        public String ImageUrl
        {
            get { return GetPropertyValue<String>("ImageUrl"); }
            set { SetPropertyValue("ImageUrl", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Title
        {
            get { return GetPropertyValue<String>("Title"); }
            set { SetPropertyValue("Title", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Resume
        {
            get { return GetPropertyValue<String>("Resume"); }
            set { SetPropertyValue("Resume", value); }
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
        public String Details
        {
            get { return GetPropertyValue<String>("Details"); }
            set { SetPropertyValue("Details", value); }
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
        public DateTime? DeadLine
        {
            get { return GetPropertyValue<DateTime?>("DeadLine"); }
            set { SetPropertyValue("DeadLine", value); }
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

    [Table("[v_Sys_Advertising]", DbType.SqlServer)]
    public  partial class v_Sys_AdvertisingSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[v_Sys_Advertising]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[v_Sys_Advertising]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[Id]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[Category]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ImageUrl = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[ImageUrl]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Title = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[Title]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Resume = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[Resume]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Url = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[Url]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[Details]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[AddTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase DeadLine = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[DeadLine]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[States]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CategoryName = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[CategoryName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[v_Sys_Advertising]", FieldType.Common, "[isDeleted]");
    }

}
