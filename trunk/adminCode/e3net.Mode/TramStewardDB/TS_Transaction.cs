using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.TramStewardDB
{

    [Table("[TS_Transaction]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TS_Transaction : EntityBase
    {

        /// <summary>
        /// 主键
        /// </summary>
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
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
        /// 姓名
        /// </summary>
        public String TrueName
        {
            get { return GetPropertyValue<String>("TrueName"); }
            set { SetPropertyValue("TrueName", value); }
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
        /// 品牌
        /// </summary>
        public String Brand
        {
            get { return GetPropertyValue<String>("Brand"); }
            set { SetPropertyValue("Brand", value); }
        }

        /// <summary>
        /// 电话
        /// </summary>
        public String Phone
        {
            get { return GetPropertyValue<String>("Phone"); }
            set { SetPropertyValue("Phone", value); }
        }

        /// <summary>
        /// 详情
        /// </summary>
        public String Details
        {
            get { return GetPropertyValue<String>("Details"); }
            set { SetPropertyValue("Details", value); }
        }

        /// <summary>
        /// 价格
        /// </summary>
        public Decimal? Price
        {
            get { return GetPropertyValue<Decimal?>("Price"); }
            set { SetPropertyValue("Price", value); }
        }

        /// <summary>
        /// 类型（二手车等）
        /// </summary>
        public String Types
        {
            get { return GetPropertyValue<String>("Types"); }
            set { SetPropertyValue("Types", value); }
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
        /// 省
        /// </summary>
        public String ProvinceCode
        {
            get { return GetPropertyValue<String>("ProvinceCode"); }
            set { SetPropertyValue("ProvinceCode", value); }
        }

        /// <summary>
        /// 城市
        /// </summary>
        public String CityCode
        {
            get { return GetPropertyValue<String>("CityCode"); }
            set { SetPropertyValue("CityCode", value); }
        }

        /// <summary>
        /// 区
        /// </summary>
        public String AreaCode
        {
            get { return GetPropertyValue<String>("AreaCode"); }
            set { SetPropertyValue("AreaCode", value); }
        }

        /// <summary>
        /// 地址
        /// </summary>
        public String Address
        {
            get { return GetPropertyValue<String>("Address"); }
            set { SetPropertyValue("Address", value); }
        }

        /// <summary>
        /// 呼叫量
        /// </summary>
        public Int32? CallCount
        {
            get { return GetPropertyValue<Int32?>("CallCount"); }
            set { SetPropertyValue("CallCount", value); }
        }

        /// <summary>
        /// 赞
        /// </summary>
        public Int32? Praises
        {
            get { return GetPropertyValue<Int32?>("Praises"); }
            set { SetPropertyValue("Praises", value); }
        }

        /// <summary>
        /// 点击数
        /// </summary>
        public Int32? Clicks
        {
            get { return GetPropertyValue<Int32?>("Clicks"); }
            set { SetPropertyValue("Clicks", value); }
        }

        /// <summary>
        /// 创建人Id
        /// </summary>
        public Guid? CreateManId
        {
            get { return GetPropertyValue<Guid?>("CreateManId"); }
            set { SetPropertyValue("CreateManId", value); }
        }

        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime? CreateTime
        {
            get { return GetPropertyValue<DateTime?>("CreateTime"); }
            set { SetPropertyValue("CreateTime", value); }
        }

        /// <summary>
        /// 修改时间
        /// </summary>
        public DateTime? UpdateTime
        {
            get { return GetPropertyValue<DateTime?>("UpdateTime"); }
            set { SetPropertyValue("UpdateTime", value); }
        }

        /// <summary>
        /// 经度
        /// </summary>
        public Double? Longitude
        {
            get { return GetPropertyValue<Double?>("Longitude"); }
            set { SetPropertyValue("Longitude", value); }
        }

        /// <summary>
        /// 纬度
        /// </summary>
        public Double? Latitude
        {
            get { return GetPropertyValue<Double?>("Latitude"); }
            set { SetPropertyValue("Latitude", value); }
        }

        /// <summary>
        /// 是否置顶（1是、0否）
        /// </summary>
        public Int32? isTop
        {
            get { return GetPropertyValue<Int32?>("isTop"); }
            set { SetPropertyValue("isTop", value); }
        }

        /// <summary>
        /// 状态（2已审核、开启1，未审核0，关闭-1）
        /// </summary>
        public Int32? States
        {
            get { return GetPropertyValue<Int32?>("States"); }
            set { SetPropertyValue("States", value); }
        }

        /// <summary>
        /// 是否有效
        /// </summary>
        public Int32? isValid
        {
            get { return GetPropertyValue<Int32?>("isValid"); }
            set { SetPropertyValue("isValid", value); }
        }

        /// <summary>
        /// 是否删除
        /// </summary>
        public Boolean? isDeleted
        {
            get { return GetPropertyValue<Boolean?>("isDeleted"); }
            set { SetPropertyValue("isDeleted", value); }
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

    [Table("[TS_Transaction]", DbType.SqlServer)]
    public  partial class TS_TransactionSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TS_Transaction]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TS_Transaction]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 标题
        /// </summary>
        public static readonly FieldBase Title = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Title]");

        /// <summary>
        /// 姓名
        /// </summary>
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[TrueName]");

        /// <summary>
        /// 图像
        /// </summary>
        public static readonly FieldBase ImageUrl = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[ImageUrl]");

        /// <summary>
        /// 品牌
        /// </summary>
        public static readonly FieldBase Brand = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Brand]");

        /// <summary>
        /// 电话
        /// </summary>
        public static readonly FieldBase Phone = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Phone]");

        /// <summary>
        /// 详情
        /// </summary>
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Details]");

        /// <summary>
        /// 价格
        /// </summary>
        public static readonly FieldBase Price = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Price]");

        /// <summary>
        /// 类型（二手车等）
        /// </summary>
        public static readonly FieldBase Types = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Types]");

        /// <summary>
        /// 类别
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Category]");

        /// <summary>
        /// 省
        /// </summary>
        public static readonly FieldBase ProvinceCode = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[ProvinceCode]");

        /// <summary>
        /// 城市
        /// </summary>
        public static readonly FieldBase CityCode = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[CityCode]");

        /// <summary>
        /// 区
        /// </summary>
        public static readonly FieldBase AreaCode = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[AreaCode]");

        /// <summary>
        /// 地址
        /// </summary>
        public static readonly FieldBase Address = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Address]");

        /// <summary>
        /// 呼叫量
        /// </summary>
        public static readonly FieldBase CallCount = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[CallCount]");

        /// <summary>
        /// 赞
        /// </summary>
        public static readonly FieldBase Praises = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Praises]");

        /// <summary>
        /// 点击数
        /// </summary>
        public static readonly FieldBase Clicks = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Clicks]");

        /// <summary>
        /// 创建人Id
        /// </summary>
        public static readonly FieldBase CreateManId = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[CreateManId]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 修改时间
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 经度
        /// </summary>
        public static readonly FieldBase Longitude = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Longitude]");

        /// <summary>
        /// 纬度
        /// </summary>
        public static readonly FieldBase Latitude = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[Latitude]");

        /// <summary>
        /// 是否置顶（1是、0否）
        /// </summary>
        public static readonly FieldBase isTop = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[isTop]");

        /// <summary>
        /// 状态（2已审核、开启1，未审核0，关闭-1）
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[States]");

        /// <summary>
        /// 是否有效
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[isDeleted]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase geohash = new FieldBase(DbType.SqlServer, "[TS_Transaction]", FieldType.Common, "[geohash]");
    }

}
