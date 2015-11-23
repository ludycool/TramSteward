using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;
namespace e3net.Mode.RMS 
{

    [Table("[RMS_Role]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class RMS_Role : EntityBase
    {
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
        }
        public String RoleName
        {
            get { return GetPropertyValue<String>("RoleName"); }
            set { SetPropertyValue("RoleName", value); }
        }
        public String Remarks
        {
            get { return GetPropertyValue<String>("Remarks"); }
            set { SetPropertyValue("Remarks", value); }
        }
        public String CreateBy
        {
            get { return GetPropertyValue<String>("CreateBy"); }
            set { SetPropertyValue("CreateBy", value); }
        }
        public DateTime? CreateTime
        {
            get { return GetPropertyValue<DateTime?>("CreateTime"); }
            set { SetPropertyValue("CreateTime", value); }
        }
        public String ModifyBy
        {
            get { return GetPropertyValue<String>("ModifyBy"); }
            set { SetPropertyValue("ModifyBy", value); }
        }
        public DateTime? ModifyTime
        {
            get { return GetPropertyValue<DateTime?>("ModifyTime"); }
            set { SetPropertyValue("ModifyTime", value); }
        }
    }

    [Table("[RMS_Role]", DbType.SqlServer)]
    public class RMS_RoleSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[RMS_Role]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[RMS_Role]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase RoleName = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[RoleName]");
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[Remarks]");
        public static readonly FieldBase CreateBy = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[CreateBy]");
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[CreateTime]");
        public static readonly FieldBase ModifyBy = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[ModifyBy]");
        public static readonly FieldBase ModifyTime = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[ModifyTime]");
    }

}
