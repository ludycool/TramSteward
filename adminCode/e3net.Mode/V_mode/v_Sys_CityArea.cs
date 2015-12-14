using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.V_mode
{

    [Table("[v_Sys_CityArea]", DbType.SqlServer)]

    public partial class v_Sys_CityArea : EntityBase
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
        public Int32? ParentId
        {
            get { return GetPropertyValue<Int32?>("ParentId"); }
            set { SetPropertyValue("ParentId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? OrderNo
        {
            get { return GetPropertyValue<Int32?>("OrderNo"); }
            set { SetPropertyValue("OrderNo", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Name
        {
            get { return GetPropertyValue<String>("Name"); }
            set { SetPropertyValue("Name", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String ValueName
        {
            get { return GetPropertyValue<String>("ValueName"); }
            set { SetPropertyValue("ValueName", value); }
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
        public String Icon
        {
            get { return GetPropertyValue<String>("Icon"); }
            set { SetPropertyValue("Icon", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? AreaTypes
        {
            get { return GetPropertyValue<Int32?>("AreaTypes"); }
            set { SetPropertyValue("AreaTypes", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String AreaTypesName
        {
            get { return GetPropertyValue<String>("AreaTypesName"); }
            set { SetPropertyValue("AreaTypesName", value); }
        }
    }

    [Table("[v_Sys_CityArea]", DbType.SqlServer)]
    public  partial class v_Sys_CityAreaSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[v_Sys_CityArea]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[v_Sys_CityArea]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[v_Sys_CityArea]", FieldType.Common, "[Id]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ParentId = new FieldBase(DbType.SqlServer, "[v_Sys_CityArea]", FieldType.Common, "[ParentId]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase OrderNo = new FieldBase(DbType.SqlServer, "[v_Sys_CityArea]", FieldType.Common, "[OrderNo]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Name = new FieldBase(DbType.SqlServer, "[v_Sys_CityArea]", FieldType.Common, "[Name]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ValueName = new FieldBase(DbType.SqlServer, "[v_Sys_CityArea]", FieldType.Common, "[ValueName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[v_Sys_CityArea]", FieldType.Common, "[Remarks]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Icon = new FieldBase(DbType.SqlServer, "[v_Sys_CityArea]", FieldType.Common, "[Icon]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase AreaTypes = new FieldBase(DbType.SqlServer, "[v_Sys_CityArea]", FieldType.Common, "[AreaTypes]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase AreaTypesName = new FieldBase(DbType.SqlServer, "[v_Sys_CityArea]", FieldType.Common, "[AreaTypesName]");
    }

}
