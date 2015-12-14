using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode
{

    [Table("[Sys_CityArea]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.AutoIncrease, typeof(Int32), "Id")]
    public partial class Sys_CityArea : EntityBase
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
        /// 父级
        /// </summary>
        public Int32? ParentId
        {
            get { return GetPropertyValue<Int32?>("ParentId"); }
            set { SetPropertyValue("ParentId", value); }
        }

        /// <summary>
        /// 排序
        /// </summary>
        public Int32? OrderNo
        {
            get { return GetPropertyValue<Int32?>("OrderNo"); }
            set { SetPropertyValue("OrderNo", value); }
        }

        /// <summary>
        /// 名字
        /// </summary>
        public String Name
        {
            get { return GetPropertyValue<String>("Name"); }
            set { SetPropertyValue("Name", value); }
        }

        /// <summary>
        /// Code值
        /// </summary>
        public String ValueName
        {
            get { return GetPropertyValue<String>("ValueName"); }
            set { SetPropertyValue("ValueName", value); }
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
        /// 图标
        /// </summary>
        public String Icon
        {
            get { return GetPropertyValue<String>("Icon"); }
            set { SetPropertyValue("Icon", value); }
        }

        /// <summary>
        /// 类型 0区 1 市 2 省
        /// </summary>
        public Int32? AreaTypes
        {
            get { return GetPropertyValue<Int32?>("AreaTypes"); }
            set { SetPropertyValue("AreaTypes", value); }
        }
    }

    [Table("[Sys_CityArea]", DbType.SqlServer)]
    public  partial class Sys_CityAreaSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[Sys_CityArea]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[Sys_CityArea]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[Sys_CityArea]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 父级
        /// </summary>
        public static readonly FieldBase ParentId = new FieldBase(DbType.SqlServer, "[Sys_CityArea]", FieldType.Common, "[ParentId]");

        /// <summary>
        /// 排序
        /// </summary>
        public static readonly FieldBase OrderNo = new FieldBase(DbType.SqlServer, "[Sys_CityArea]", FieldType.Common, "[OrderNo]");

        /// <summary>
        /// 名字
        /// </summary>
        public static readonly FieldBase Name = new FieldBase(DbType.SqlServer, "[Sys_CityArea]", FieldType.Common, "[Name]");

        /// <summary>
        /// Code值
        /// </summary>
        public static readonly FieldBase ValueName = new FieldBase(DbType.SqlServer, "[Sys_CityArea]", FieldType.Common, "[ValueName]");

        /// <summary>
        /// 备注
        /// </summary>
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[Sys_CityArea]", FieldType.Common, "[Remarks]");

        /// <summary>
        /// 图标
        /// </summary>
        public static readonly FieldBase Icon = new FieldBase(DbType.SqlServer, "[Sys_CityArea]", FieldType.Common, "[Icon]");

        /// <summary>
        /// 类型 0区 1 市 2 省
        /// </summary>
        public static readonly FieldBase AreaTypes = new FieldBase(DbType.SqlServer, "[Sys_CityArea]", FieldType.Common, "[AreaTypes]");
    }

}
