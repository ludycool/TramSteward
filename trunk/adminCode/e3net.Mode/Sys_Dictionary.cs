using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;
namespace e3net.Mode
{

    [Table("[Sys_Dictionary]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class Sys_Dictionary : EntityBase
    {
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
        }
        public Guid ParentId
        {
            get { return GetPropertyValue<Guid>("ParentId"); }
            set { SetPropertyValue("ParentId", value); }
        }
        public Int32? OrderNo
        {
            get { return GetPropertyValue<Int32?>("OrderNo"); }
            set { SetPropertyValue("OrderNo", value); }
        }
        public String Name
        {
            get { return GetPropertyValue<String>("Name"); }
            set { SetPropertyValue("Name", value); }
        }
        public String ValueName
        {
            get { return GetPropertyValue<String>("ValueName"); }
            set { SetPropertyValue("ValueName", value); }
        }
        public String Remarks
        {
            get { return GetPropertyValue<String>("Remarks"); }
            set { SetPropertyValue("Remarks", value); }
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
    }

    [Table("[Sys_Dictionary]", DbType.SqlServer)]
    public class Sys_DictionarySet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[Sys_Dictionary]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[Sys_Dictionary]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[Sys_Dictionary]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase ParentId = new FieldBase(DbType.SqlServer, "[Sys_Dictionary]", FieldType.Common, "[ParentId]");
        public static readonly FieldBase OrderNo = new FieldBase(DbType.SqlServer, "[Sys_Dictionary]", FieldType.Common, "[OrderNo]");
        public static readonly FieldBase Name = new FieldBase(DbType.SqlServer, "[Sys_Dictionary]", FieldType.Common, "[Name]");
        public static readonly FieldBase ValueName = new FieldBase(DbType.SqlServer, "[Sys_Dictionary]", FieldType.Common, "[ValueName]");
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[Sys_Dictionary]", FieldType.Common, "[Remarks]");
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[Sys_Dictionary]", FieldType.Common, "[CreateTime]");
        public static readonly FieldBase ModifyTime = new FieldBase(DbType.SqlServer, "[Sys_Dictionary]", FieldType.Common, "[ModifyTime]");
        public static readonly FieldBase Icon = new FieldBase(DbType.SqlServer, "[Sys_Dictionary]", FieldType.Common, "[Icon]");
    }

}
