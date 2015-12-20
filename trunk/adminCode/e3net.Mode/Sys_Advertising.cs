using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode
{

    [Table("[Sys_Advertising]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.AutoIncrease, typeof(Int32), "Id")]
    public partial class Sys_Advertising : EntityBase
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
        /// 类别
        /// </summary>
        public String Category
        {
            get { return GetPropertyValue<String>("Category"); }
            set { SetPropertyValue("Category", value); }
        }

        /// <summary>
        /// 图像
        /// </summary>
        public String ImageUrl
        {
            get { return GetPropertyValue<String>("ImageUrl"); }
            set { SetPropertyValue("ImageUrl", value); }
        }

        /// <summary>
        /// 标题
        /// </summary>
        public String Title
        {
            get { return GetPropertyValue<String>("Title"); }
            set { SetPropertyValue("Title", value); }
        }

        /// <summary>
        /// 简述
        /// </summary>
        public String Resume
        {
            get { return GetPropertyValue<String>("Resume"); }
            set { SetPropertyValue("Resume", value); }
        }

        /// <summary>
        /// 地址
        /// </summary>
        public String Url
        {
            get { return GetPropertyValue<String>("Url"); }
            set { SetPropertyValue("Url", value); }
        }

        /// <summary>
        /// 备注说明
        /// </summary>
        public String Details
        {
            get { return GetPropertyValue<String>("Details"); }
            set { SetPropertyValue("Details", value); }
        }

        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime? AddTime
        {
            get { return GetPropertyValue<DateTime?>("AddTime"); }
            set { SetPropertyValue("AddTime", value); }
        }

        /// <summary>
        /// 更新时间
        /// </summary>
        public DateTime? UpdateTime
        {
            get { return GetPropertyValue<DateTime?>("UpdateTime"); }
            set { SetPropertyValue("UpdateTime", value); }
        }

        /// <summary>
        /// 过期时间
        /// </summary>
        public DateTime? DeadLine
        {
            get { return GetPropertyValue<DateTime?>("DeadLine"); }
            set { SetPropertyValue("DeadLine", value); }
        }

        /// <summary>
        /// 状态1启用2禁用
        /// </summary>
        public Int32? States
        {
            get { return GetPropertyValue<Int32?>("States"); }
            set { SetPropertyValue("States", value); }
        }

        /// <summary>
        /// 是否删除
        /// </summary>
        public Boolean? isDeleted
        {
            get { return GetPropertyValue<Boolean?>("isDeleted"); }
            set { SetPropertyValue("isDeleted", value); }
        }
    }

    [Table("[Sys_Advertising]", DbType.SqlServer)]
    public  partial class Sys_AdvertisingSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[Sys_Advertising]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[Sys_Advertising]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 类别
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.Common, "[Category]");

        /// <summary>
        /// 图像
        /// </summary>
        public static readonly FieldBase ImageUrl = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.Common, "[ImageUrl]");

        /// <summary>
        /// 标题
        /// </summary>
        public static readonly FieldBase Title = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.Common, "[Title]");

        /// <summary>
        /// 简述
        /// </summary>
        public static readonly FieldBase Resume = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.Common, "[Resume]");

        /// <summary>
        /// 地址
        /// </summary>
        public static readonly FieldBase Url = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.Common, "[Url]");

        /// <summary>
        /// 备注说明
        /// </summary>
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.Common, "[Details]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.Common, "[AddTime]");

        /// <summary>
        /// 更新时间
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 过期时间
        /// </summary>
        public static readonly FieldBase DeadLine = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.Common, "[DeadLine]");

        /// <summary>
        /// 状态1启用2禁用
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.Common, "[States]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[Sys_Advertising]", FieldType.Common, "[isDeleted]");
    }

}
