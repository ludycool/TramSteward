using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.TramStewardDB
{

    [Table("[TS_ShopUser]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TS_ShopUser : EntityBase
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
        /// 图片
        /// </summary>
        public String ImgeUrl
        {
            get { return GetPropertyValue<String>("ImgeUrl"); }
            set { SetPropertyValue("ImgeUrl", value); }
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
        /// 用户名
        /// </summary>
        public String UserName
        {
            get { return GetPropertyValue<String>("UserName"); }
            set { SetPropertyValue("UserName", value); }
        }

        /// <summary>
        /// 密码
        /// </summary>
        public String Pwd
        {
            get { return GetPropertyValue<String>("Pwd"); }
            set { SetPropertyValue("Pwd", value); }
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
        /// 地址
        /// </summary>
        public String Address
        {
            get { return GetPropertyValue<String>("Address"); }
            set { SetPropertyValue("Address", value); }
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
        /// 详情
        /// </summary>
        public String Details
        {
            get { return GetPropertyValue<String>("Details"); }
            set { SetPropertyValue("Details", value); }
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
        /// 位置更新时间
        /// </summary>
        public DateTime? LocationUpdateTime
        {
            get { return GetPropertyValue<DateTime?>("LocationUpdateTime"); }
            set { SetPropertyValue("LocationUpdateTime", value); }
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
        public Boolean? isValid
        {
            get { return GetPropertyValue<Boolean?>("isValid"); }
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
    }

    [Table("[TS_ShopUser]", DbType.SqlServer)]
    public  partial class TS_ShopUserSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TS_ShopUser]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TS_ShopUser]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 图片
        /// </summary>
        public static readonly FieldBase ImgeUrl = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[ImgeUrl]");

        /// <summary>
        /// 姓名
        /// </summary>
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[TrueName]");

        /// <summary>
        /// 用户名
        /// </summary>
        public static readonly FieldBase UserName = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[UserName]");

        /// <summary>
        /// 密码
        /// </summary>
        public static readonly FieldBase Pwd = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[Pwd]");

        /// <summary>
        /// 电话
        /// </summary>
        public static readonly FieldBase Phone = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[Phone]");

        /// <summary>
        /// 地址
        /// </summary>
        public static readonly FieldBase Address = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[Address]");

        /// <summary>
        /// 类别
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[Category]");

        /// <summary>
        /// 详情
        /// </summary>
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[Details]");

        /// <summary>
        /// 经度
        /// </summary>
        public static readonly FieldBase Longitude = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[Longitude]");

        /// <summary>
        /// 纬度
        /// </summary>
        public static readonly FieldBase Latitude = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[Latitude]");

        /// <summary>
        /// 位置更新时间
        /// </summary>
        public static readonly FieldBase LocationUpdateTime = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[LocationUpdateTime]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[AddTime]");

        /// <summary>
        /// 更新时间
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 状态（2已审核、开启1，未审核0，关闭-1）
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[States]");

        /// <summary>
        /// 是否有效
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[TS_ShopUser]", FieldType.Common, "[isDeleted]");
    }

}
