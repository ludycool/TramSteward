using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;
namespace e3net.Mode.RMS 
{

    [Table("[RMS_UserRole]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class RMS_UserRole : EntityBase
    {
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
        }
        public Guid? UserId
        {
            get { return GetPropertyValue<Guid?>("UserId"); }
            set { SetPropertyValue("UserId", value); }
        }
        public Guid? RoleId
        {
            get { return GetPropertyValue<Guid?>("RoleId"); }
            set { SetPropertyValue("RoleId", value); }
        }
    }

    [Table("[RMS_UserRole]", DbType.SqlServer)]
    public class RMS_UserRoleSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[RMS_UserRole]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[RMS_UserRole]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[RMS_UserRole]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase UserId = new FieldBase(DbType.SqlServer, "[RMS_UserRole]", FieldType.Common, "[UserId]");
        public static readonly FieldBase RoleId = new FieldBase(DbType.SqlServer, "[RMS_UserRole]", FieldType.Common, "[RoleId]");
    }

}
