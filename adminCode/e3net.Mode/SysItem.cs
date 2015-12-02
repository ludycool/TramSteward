using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode
{

    [Table("[SysItem]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.AutoIncrease, typeof(Int32), "Id")]
    public partial class SysItem : EntityBase
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
        /// 类型
        /// </summary>
        public String ItemType
        {
            get { return GetPropertyValue<String>("ItemType"); }
            set { SetPropertyValue("ItemType", value); }
        }

        /// <summary>
        /// 值
        /// </summary>
        public String ItemValue
        {
            get { return GetPropertyValue<String>("ItemValue"); }
            set { SetPropertyValue("ItemValue", value); }
        }

        /// <summary>
        /// 名称
        /// </summary>
        public String ItemName
        {
            get { return GetPropertyValue<String>("ItemName"); }
            set { SetPropertyValue("ItemName", value); }
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
        /// 排序
        /// </summary>
        public Int32? OrderID
        {
            get { return GetPropertyValue<Int32?>("OrderID"); }
            set { SetPropertyValue("OrderID", value); }
        }

        /// <summary>
        /// 备注
        /// </summary>
        public String Remark
        {
            get { return GetPropertyValue<String>("Remark"); }
            set { SetPropertyValue("Remark", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CreateTime
        {
            get { return GetPropertyValue<String>("CreateTime"); }
            set { SetPropertyValue("CreateTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CreateMan
        {
            get { return GetPropertyValue<String>("CreateMan"); }
            set { SetPropertyValue("CreateMan", value); }
        }

        /// <summary>
        /// 是否生效
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
    }

    [Table("[SysItem]", DbType.SqlServer)]
    public  partial class SysItemSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[SysItem]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[SysItem]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[SysItem]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 类型
        /// </summary>
        public static readonly FieldBase ItemType = new FieldBase(DbType.SqlServer, "[SysItem]", FieldType.Common, "[ItemType]");

        /// <summary>
        /// 值
        /// </summary>
        public static readonly FieldBase ItemValue = new FieldBase(DbType.SqlServer, "[SysItem]", FieldType.Common, "[ItemValue]");

        /// <summary>
        /// 名称
        /// </summary>
        public static readonly FieldBase ItemName = new FieldBase(DbType.SqlServer, "[SysItem]", FieldType.Common, "[ItemName]");

        /// <summary>
        /// 图标
        /// </summary>
        public static readonly FieldBase Icon = new FieldBase(DbType.SqlServer, "[SysItem]", FieldType.Common, "[Icon]");

        /// <summary>
        /// 排序
        /// </summary>
        public static readonly FieldBase OrderID = new FieldBase(DbType.SqlServer, "[SysItem]", FieldType.Common, "[OrderID]");

        /// <summary>
        /// 备注
        /// </summary>
        public static readonly FieldBase Remark = new FieldBase(DbType.SqlServer, "[SysItem]", FieldType.Common, "[Remark]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[SysItem]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateMan = new FieldBase(DbType.SqlServer, "[SysItem]", FieldType.Common, "[CreateMan]");

        /// <summary>
        /// 是否生效
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[SysItem]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[SysItem]", FieldType.Common, "[isDeleted]");
    }

}
