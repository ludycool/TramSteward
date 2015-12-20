using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode
{

    [Table("[Sys_AppVerSion]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.AutoIncrease, typeof(Int32), "Id")]
    public partial class Sys_AppVerSion : EntityBase
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
        /// 名称
        /// </summary>
        public String TName
        {
            get { return GetPropertyValue<String>("TName"); }
            set { SetPropertyValue("TName", value); }
        }

        /// <summary>
        /// 版本号
        /// </summary>
        public String Version
        {
            get { return GetPropertyValue<String>("Version"); }
            set { SetPropertyValue("Version", value); }
        }

        /// <summary>
        /// 下载地址
        /// </summary>
        public String Url
        {
            get { return GetPropertyValue<String>("Url"); }
            set { SetPropertyValue("Url", value); }
        }

        /// <summary>
        /// 备注
        /// </summary>
        public String Remarks
        {
            get { return GetPropertyValue<String>("Remarks"); }
            set { SetPropertyValue("Remarks", value); }
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
        /// 更新
        /// </summary>
        public DateTime? UpdateTime
        {
            get { return GetPropertyValue<DateTime?>("UpdateTime"); }
            set { SetPropertyValue("UpdateTime", value); }
        }

        /// <summary>
        ///  1强制更新 0可以不更新
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

    [Table("[Sys_AppVerSion]", DbType.SqlServer)]
    public  partial class Sys_AppVerSionSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[Sys_AppVerSion]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[Sys_AppVerSion]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[Sys_AppVerSion]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 类别
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[Sys_AppVerSion]", FieldType.Common, "[Category]");

        /// <summary>
        /// 名称
        /// </summary>
        public static readonly FieldBase TName = new FieldBase(DbType.SqlServer, "[Sys_AppVerSion]", FieldType.Common, "[TName]");

        /// <summary>
        /// 版本号
        /// </summary>
        public static readonly FieldBase Version = new FieldBase(DbType.SqlServer, "[Sys_AppVerSion]", FieldType.Common, "[Version]");

        /// <summary>
        /// 下载地址
        /// </summary>
        public static readonly FieldBase Url = new FieldBase(DbType.SqlServer, "[Sys_AppVerSion]", FieldType.Common, "[Url]");

        /// <summary>
        /// 备注
        /// </summary>
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[Sys_AppVerSion]", FieldType.Common, "[Remarks]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[Sys_AppVerSion]", FieldType.Common, "[AddTime]");

        /// <summary>
        /// 更新
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[Sys_AppVerSion]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        ///  1强制更新 0可以不更新
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[Sys_AppVerSion]", FieldType.Common, "[States]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[Sys_AppVerSion]", FieldType.Common, "[isDeleted]");
    }

}
