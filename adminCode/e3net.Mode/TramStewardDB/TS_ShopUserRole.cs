using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.TramStewardDB
{

    [Table("[TS_ShopUserRole]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TS_ShopUserRole : EntityBase
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
        /// 
        /// </summary>
        public Guid? UserId
        {
            get { return GetPropertyValue<Guid?>("UserId"); }
            set { SetPropertyValue("UserId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Guid? RoleId
        {
            get { return GetPropertyValue<Guid?>("RoleId"); }
            set { SetPropertyValue("RoleId", value); }
        }
    }

    [Table("[TS_ShopUserRole]", DbType.SqlServer)]
    public  partial class TS_ShopUserRoleSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TS_ShopUserRole]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TS_ShopUserRole]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TS_ShopUserRole]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase UserId = new FieldBase(DbType.SqlServer, "[TS_ShopUserRole]", FieldType.Common, "[UserId]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase RoleId = new FieldBase(DbType.SqlServer, "[TS_ShopUserRole]", FieldType.Common, "[RoleId]");
    }

}
