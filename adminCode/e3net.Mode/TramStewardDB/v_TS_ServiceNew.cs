﻿using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.TramStewardDB
{

    [Table("[v_TS_ServiceNew]", DbType.SqlServer)]

    public partial class v_TS_ServiceNew : EntityBase
    {

        /// <summary>
        /// 
        /// </summary>
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
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
        public String ImageUrlMax
        {
            get { return GetPropertyValue<String>("ImageUrlMax"); }
            set { SetPropertyValue("ImageUrlMax", value); }
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
        public Int32? Star
        {
            get { return GetPropertyValue<Int32?>("Star"); }
            set { SetPropertyValue("Star", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Phone
        {
            get { return GetPropertyValue<String>("Phone"); }
            set { SetPropertyValue("Phone", value); }
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
        public String Category
        {
            get { return GetPropertyValue<String>("Category"); }
            set { SetPropertyValue("Category", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Guid? CreateManId
        {
            get { return GetPropertyValue<Guid?>("CreateManId"); }
            set { SetPropertyValue("CreateManId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String ProvinceCode
        {
            get { return GetPropertyValue<String>("ProvinceCode"); }
            set { SetPropertyValue("ProvinceCode", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CityCode
        {
            get { return GetPropertyValue<String>("CityCode"); }
            set { SetPropertyValue("CityCode", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String AreaCode
        {
            get { return GetPropertyValue<String>("AreaCode"); }
            set { SetPropertyValue("AreaCode", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Address
        {
            get { return GetPropertyValue<String>("Address"); }
            set { SetPropertyValue("Address", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? CallCount
        {
            get { return GetPropertyValue<Int32?>("CallCount"); }
            set { SetPropertyValue("CallCount", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? Praises
        {
            get { return GetPropertyValue<Int32?>("Praises"); }
            set { SetPropertyValue("Praises", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? Clicks
        {
            get { return GetPropertyValue<Int32?>("Clicks"); }
            set { SetPropertyValue("Clicks", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? CreateTime
        {
            get { return GetPropertyValue<DateTime?>("CreateTime"); }
            set { SetPropertyValue("CreateTime", value); }
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
        public Int32? isValid
        {
            get { return GetPropertyValue<Int32?>("isValid"); }
            set { SetPropertyValue("isValid", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? isDeleted
        {
            get { return GetPropertyValue<Boolean?>("isDeleted"); }
            set { SetPropertyValue("isDeleted", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String ProvinceName
        {
            get { return GetPropertyValue<String>("ProvinceName"); }
            set { SetPropertyValue("ProvinceName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CityName
        {
            get { return GetPropertyValue<String>("CityName"); }
            set { SetPropertyValue("CityName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String AreaName
        {
            get { return GetPropertyValue<String>("AreaName"); }
            set { SetPropertyValue("AreaName", value); }
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
        public String StatesName
        {
            get { return GetPropertyValue<String>("StatesName"); }
            set { SetPropertyValue("StatesName", value); }
        }
    }

    [Table("[v_TS_ServiceNew]", DbType.SqlServer)]
    public  partial class v_TS_ServiceNewSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[v_TS_ServiceNew]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[v_TS_ServiceNew]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[Id]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase TName = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[TName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ImageUrlMax = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[ImageUrlMax]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ImageUrl = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[ImageUrl]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Star = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[Star]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Phone = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[Phone]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[Details]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[Category]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateManId = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[CreateManId]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ProvinceCode = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[ProvinceCode]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CityCode = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[CityCode]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase AreaCode = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[AreaCode]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Address = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[Address]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CallCount = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[CallCount]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Praises = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[Praises]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Clicks = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[Clicks]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[States]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[isDeleted]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ProvinceName = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[ProvinceName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CityName = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[CityName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase AreaName = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[AreaName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CategoryName = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[CategoryName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase StatesName = new FieldBase(DbType.SqlServer, "[v_TS_ServiceNew]", FieldType.Common, "[StatesName]");
    }

}
