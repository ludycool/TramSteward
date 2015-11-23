using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;
namespace e3net.Mode.RMS 
{

    [Table("[RMS_RoleManuButtons]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class RMS_RoleManuButtons : EntityBase
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
        public Guid? MenuButtonsId
        {
            get { return GetPropertyValue<Guid?>("MenuButtonsId"); }
            set { SetPropertyValue("MenuButtonsId", value); }
        }
    }

    [Table("[RMS_RoleManuButtons]", DbType.SqlServer)]
    public class RMS_RoleManuButtonsSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[RMS_RoleManuButtons]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[RMS_RoleManuButtons]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[RMS_RoleManuButtons]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase RoleId = new FieldBase(DbType.SqlServer, "[RMS_RoleManuButtons]", FieldType.Common, "[RoleId]");
        public static readonly FieldBase MenuButtonsId = new FieldBase(DbType.SqlServer, "[RMS_RoleManuButtons]", FieldType.Common, "[MenuButtonsId]");
    }

}
