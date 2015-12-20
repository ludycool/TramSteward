using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.TramStewardDB
{

    [Table("[v_TS_Car]", DbType.SqlServer)]

    public partial class v_TS_Car : EntityBase
    {

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
        public String StatesName
        {
            get { return GetPropertyValue<String>("StatesName"); }
            set { SetPropertyValue("StatesName", value); }
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
        public String Address
        {
            get { return GetPropertyValue<String>("Address"); }
            set { SetPropertyValue("Address", value); }
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
        public String CityCode
        {
            get { return GetPropertyValue<String>("CityCode"); }
            set { SetPropertyValue("CityCode", value); }
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
        public Int32 Star
        {
            get { return GetPropertyValue<Int32>("Star"); }
            set { SetPropertyValue("Star", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Brand
        {
            get { return GetPropertyValue<String>("Brand"); }
            set { SetPropertyValue("Brand", value); }
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
        public Decimal? Price
        {
            get { return GetPropertyValue<Decimal?>("Price"); }
            set { SetPropertyValue("Price", value); }
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
        public Guid? ShopId
        {
            get { return GetPropertyValue<Guid?>("ShopId"); }
            set { SetPropertyValue("ShopId", value); }
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
        public Int32 Praises
        {
            get { return GetPropertyValue<Int32>("Praises"); }
            set { SetPropertyValue("Praises", value); }
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
        public Int32 States
        {
            get { return GetPropertyValue<Int32>("States"); }
            set { SetPropertyValue("States", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32 isValid
        {
            get { return GetPropertyValue<Int32>("isValid"); }
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
        public String ShopName
        {
            get { return GetPropertyValue<String>("ShopName"); }
            set { SetPropertyValue("ShopName", value); }
        }
    }

    [Table("[v_TS_Car]", DbType.SqlServer)]
    public  partial class v_TS_CarSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[v_TS_Car]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[v_TS_Car]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Name = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[Name]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase StatesName = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[StatesName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Phone = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[Phone]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Address = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[Address]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase AreaCode = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[AreaCode]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CityCode = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[CityCode]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ProvinceCode = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[ProvinceCode]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[Id]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase TName = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[TName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ImageUrlMax = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[ImageUrlMax]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ImageUrl = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[ImageUrl]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Star = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[Star]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Brand = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[Brand]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[Details]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Price = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[Price]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[Category]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ShopId = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[ShopId]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateManId = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[CreateManId]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Praises = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[Praises]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[States]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[isDeleted]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ShopName = new FieldBase(DbType.SqlServer, "[v_TS_Car]", FieldType.Common, "[ShopName]");
    }

}
