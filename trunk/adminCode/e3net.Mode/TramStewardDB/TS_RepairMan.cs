using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.TramStewardDB
{

    [Table("[TS_RepairMan]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TS_RepairMan : EntityBase
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
        /// 姓名
        /// </summary>
        public String TrueName
        {
            get { return GetPropertyValue<String>("TrueName"); }
            set { SetPropertyValue("TrueName", value); }
        }

        /// <summary>
        /// 身份证
        /// </summary>
        public String IdentityCard
        {
            get { return GetPropertyValue<String>("IdentityCard"); }
            set { SetPropertyValue("IdentityCard", value); }
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
        /// 状态2（空闲1，抢修中0，休假2）
        /// </summary>
        public Int32? State2
        {
            get { return GetPropertyValue<Int32?>("State2"); }
            set { SetPropertyValue("State2", value); }
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
        /// 星级
        /// </summary>
        public Int32? Star
        {
            get { return GetPropertyValue<Int32?>("Star"); }
            set { SetPropertyValue("Star", value); }
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
        /// 详情
        /// </summary>
        public String Details
        {
            get { return GetPropertyValue<String>("Details"); }
            set { SetPropertyValue("Details", value); }
        }

        /// <summary>
        /// 创建人Id
        /// </summary>
        public String CreateManId
        {
            get { return GetPropertyValue<String>("CreateManId"); }
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
        /// 状态（已审核、开启1，未审核0，关闭2）
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

    [Table("[TS_RepairMan]", DbType.SqlServer)]
    public  partial class TS_RepairManSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TS_RepairMan]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TS_RepairMan]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 姓名
        /// </summary>
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[TrueName]");

        /// <summary>
        /// 身份证
        /// </summary>
        public static readonly FieldBase IdentityCard = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[IdentityCard]");

        /// <summary>
        /// 图像
        /// </summary>
        public static readonly FieldBase ImageUrl = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[ImageUrl]");

        /// <summary>
        /// 状态2（空闲1，抢修中0，休假2）
        /// </summary>
        public static readonly FieldBase State2 = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[State2]");

        /// <summary>
        /// 类别
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[Category]");

        /// <summary>
        /// 城市
        /// </summary>
        public static readonly FieldBase CityCode = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[CityCode]");

        /// <summary>
        /// 区
        /// </summary>
        public static readonly FieldBase AreaCode = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[AreaCode]");

        /// <summary>
        /// 星级
        /// </summary>
        public static readonly FieldBase Star = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[Star]");

        /// <summary>
        /// 电话
        /// </summary>
        public static readonly FieldBase Phone = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[Phone]");

        /// <summary>
        /// 呼叫量
        /// </summary>
        public static readonly FieldBase CallCount = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[CallCount]");

        /// <summary>
        /// 赞
        /// </summary>
        public static readonly FieldBase Praises = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[Praises]");

        /// <summary>
        /// 详情
        /// </summary>
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[Details]");

        /// <summary>
        /// 创建人Id
        /// </summary>
        public static readonly FieldBase CreateManId = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[CreateManId]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 修改时间
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 经度
        /// </summary>
        public static readonly FieldBase Longitude = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[Longitude]");

        /// <summary>
        /// 纬度
        /// </summary>
        public static readonly FieldBase Latitude = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[Latitude]");

        /// <summary>
        /// 状态（已审核、开启1，未审核0，关闭2）
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[States]");

        /// <summary>
        /// 是否有效
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[TS_RepairMan]", FieldType.Common, "[isDeleted]");
    }

}
