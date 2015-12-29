using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.TramStewardDB
{

    [Table("[v_TS_ClientUser]", DbType.SqlServer)]

    public partial class v_TS_ClientUser : EntityBase
    {

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
        public String ImgeUrl
        {
            get { return GetPropertyValue<String>("ImgeUrl"); }
            set { SetPropertyValue("ImgeUrl", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String TrueName
        {
            get { return GetPropertyValue<String>("TrueName"); }
            set { SetPropertyValue("TrueName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String UserName
        {
            get { return GetPropertyValue<String>("UserName"); }
            set { SetPropertyValue("UserName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Pwd
        {
            get { return GetPropertyValue<String>("Pwd"); }
            set { SetPropertyValue("Pwd", value); }
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
        public String Category
        {
            get { return GetPropertyValue<String>("Category"); }
            set { SetPropertyValue("Category", value); }
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
        public Double? Longitude
        {
            get { return GetPropertyValue<Double?>("Longitude"); }
            set { SetPropertyValue("Longitude", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Double? Latitude
        {
            get { return GetPropertyValue<Double?>("Latitude"); }
            set { SetPropertyValue("Latitude", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? LocationUpdateTime
        {
            get { return GetPropertyValue<DateTime?>("LocationUpdateTime"); }
            set { SetPropertyValue("LocationUpdateTime", value); }
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
        public String NickName
        {
            get { return GetPropertyValue<String>("NickName"); }
            set { SetPropertyValue("NickName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String geohash
        {
            get { return GetPropertyValue<String>("geohash"); }
            set { SetPropertyValue("geohash", value); }
        }
    }

    [Table("[v_TS_ClientUser]", DbType.SqlServer)]
    public  partial class v_TS_ClientUserSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[v_TS_ClientUser]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[v_TS_ClientUser]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CategoryName = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[CategoryName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase StatesName = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[StatesName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[Id]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ImgeUrl = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[ImgeUrl]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[TrueName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase UserName = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[UserName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Pwd = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[Pwd]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Phone = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[Phone]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ProvinceCode = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[ProvinceCode]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CityCode = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[CityCode]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase AreaCode = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[AreaCode]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Address = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[Address]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[Category]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[Details]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Longitude = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[Longitude]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Latitude = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[Latitude]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase LocationUpdateTime = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[LocationUpdateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[AddTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[States]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[isDeleted]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ProvinceName = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[ProvinceName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CityName = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[CityName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase AreaName = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[AreaName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase NickName = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[NickName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase geohash = new FieldBase(DbType.SqlServer, "[v_TS_ClientUser]", FieldType.Common, "[geohash]");
    }

}
