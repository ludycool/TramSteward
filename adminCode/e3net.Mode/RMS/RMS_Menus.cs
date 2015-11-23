using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;
namespace e3net.Mode.RMS
{

    [Table("[RMS_Menus]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class RMS_Menus : EntityBase
    {
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
        }
        public Guid? ParentManuId
        {
            get { return GetPropertyValue<Guid?>("ParentManuId"); }
            set { SetPropertyValue("ParentManuId", value); }
        }
        public Int32? OrderNo
        {
            get { return GetPropertyValue<Int32?>("OrderNo"); }
            set { SetPropertyValue("OrderNo", value); }
        }
        public String Remarks
        {
            get { return GetPropertyValue<String>("Remarks"); }
            set { SetPropertyValue("Remarks", value); }
        }
        public String ManuName
        {
            get { return GetPropertyValue<String>("ManuName"); }
            set { SetPropertyValue("ManuName", value); }
        }
        public String URL
        {
            get { return GetPropertyValue<String>("URL"); }
            set { SetPropertyValue("URL", value); }
        }
        public Boolean? IsShow
        {
            get { return GetPropertyValue<Boolean?>("IsShow"); }
            set { SetPropertyValue("IsShow", value); }
        }
        public Boolean? IsEnable
        {
            get { return GetPropertyValue<Boolean?>("IsEnable"); }
            set { SetPropertyValue("IsEnable", value); }
        }
        public DateTime? CreateTime
        {
            get { return GetPropertyValue<DateTime?>("CreateTime"); }
            set { SetPropertyValue("CreateTime", value); }
        }
        public DateTime? ModifyTime
        {
            get { return GetPropertyValue<DateTime?>("ModifyTime"); }
            set { SetPropertyValue("ModifyTime", value); }
        }
        public String Icon
        {
            get { return GetPropertyValue<String>("Icon"); }
            set { SetPropertyValue("Icon", value); }
        }
        public String MIcon
        {
            get { return GetPropertyValue<String>("MIcon"); }
            set { SetPropertyValue("MIcon", value); }
        }
    }

    [Table("[RMS_Menus]", DbType.SqlServer)]
    public class RMS_MenusSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[RMS_Menus]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[RMS_Menus]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase ParentManuId = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.Common, "[ParentManuId]");
        public static readonly FieldBase OrderNo = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.Common, "[OrderNo]");
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.Common, "[Remarks]");
        public static readonly FieldBase ManuName = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.Common, "[ManuName]");
        public static readonly FieldBase URL = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.Common, "[URL]");
        public static readonly FieldBase IsShow = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.Common, "[IsShow]");
        public static readonly FieldBase IsEnable = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.Common, "[IsEnable]");
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.Common, "[CreateTime]");
        public static readonly FieldBase ModifyTime = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.Common, "[ModifyTime]");
        public static readonly FieldBase Icon = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.Common, "[Icon]");
        public static readonly FieldBase MIcon = new FieldBase(DbType.SqlServer, "[RMS_Menus]", FieldType.Common, "[MIcon]");
    }

}
