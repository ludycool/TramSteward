using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.TramStewardDB
{

    [Table("[TS_Car]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TS_Car : EntityBase
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
        /// 名称
        /// </summary>
        public String TName
        {
            get { return GetPropertyValue<String>("TName"); }
            set { SetPropertyValue("TName", value); }
        }

        /// <summary>
        /// 大图片
        /// </summary>
        public String ImageUrlMax
        {
            get { return GetPropertyValue<String>("ImageUrlMax"); }
            set { SetPropertyValue("ImageUrlMax", value); }
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
        /// 星级
        /// </summary>
        public Int32 Star
        {
            get { return GetPropertyValue<Int32>("Star"); }
            set { SetPropertyValue("Star", value); }
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
        /// 类别
        /// </summary>
        public String Category
        {
            get { return GetPropertyValue<String>("Category"); }
            set { SetPropertyValue("Category", value); }
        }

        /// <summary>
        /// 属店铺Id
        /// </summary>
        public Guid? ShopId
        {
            get { return GetPropertyValue<Guid?>("ShopId"); }
            set { SetPropertyValue("ShopId", value); }
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
        /// 赞
        /// </summary>
        public Int32 Praises
        {
            get { return GetPropertyValue<Int32>("Praises"); }
            set { SetPropertyValue("Praises", value); }
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
        /// 状态（2已审核、开启1，未审核0，关闭-1）
        /// </summary>
        public Int32 States
        {
            get { return GetPropertyValue<Int32>("States"); }
            set { SetPropertyValue("States", value); }
        }

        /// <summary>
        /// 是否有效
        /// </summary>
        public Int32 isValid
        {
            get { return GetPropertyValue<Int32>("isValid"); }
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

    [Table("[TS_Car]", DbType.SqlServer)]
    public  partial class TS_CarSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TS_Car]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TS_Car]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 名称
        /// </summary>
        public static readonly FieldBase TName = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[TName]");

        /// <summary>
        /// 大图片
        /// </summary>
        public static readonly FieldBase ImageUrlMax = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[ImageUrlMax]");

        /// <summary>
        /// 图像
        /// </summary>
        public static readonly FieldBase ImageUrl = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[ImageUrl]");

        /// <summary>
        /// 星级
        /// </summary>
        public static readonly FieldBase Star = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[Star]");

        /// <summary>
        /// 品牌
        /// </summary>
        public static readonly FieldBase Brand = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[Brand]");

        /// <summary>
        /// 详情
        /// </summary>
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[Details]");

        /// <summary>
        /// 价格
        /// </summary>
        public static readonly FieldBase Price = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[Price]");

        /// <summary>
        /// 类别
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[Category]");

        /// <summary>
        /// 属店铺Id
        /// </summary>
        public static readonly FieldBase ShopId = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[ShopId]");

        /// <summary>
        /// 创建人Id
        /// </summary>
        public static readonly FieldBase CreateManId = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[CreateManId]");

        /// <summary>
        /// 赞
        /// </summary>
        public static readonly FieldBase Praises = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[Praises]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 修改时间
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 状态（2已审核、开启1，未审核0，关闭-1）
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[States]");

        /// <summary>
        /// 是否有效
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[TS_Car]", FieldType.Common, "[isDeleted]");
    }

}
