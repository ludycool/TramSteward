using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;
namespace e3net.Mode.RMS 
{

    [Table("[RMS_RoleManus]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class RMS_RoleManus : EntityBase
    {
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
        }
        public Guid? RoleId
        {
            get { return GetPropertyValue<Guid?>("RoleId"); }
            set { SetPropertyValue("RoleId", value); }
        }
        public Guid? ManuId
        {
            get { return GetPropertyValue<Guid?>("ManuId"); }
            set { SetPropertyValue("ManuId", value); }
        }
    }

    [Table("[RMS_RoleManus]", DbType.SqlServer)]
    public class RMS_RoleManusSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[RMS_RoleManus]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[RMS_RoleManus]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[RMS_RoleManus]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase RoleId = new FieldBase(DbType.SqlServer, "[RMS_RoleManus]", FieldType.Common, "[RoleId]");
        public static readonly FieldBase ManuId = new FieldBase(DbType.SqlServer, "[RMS_RoleManus]", FieldType.Common, "[ManuId]");
    }

}
