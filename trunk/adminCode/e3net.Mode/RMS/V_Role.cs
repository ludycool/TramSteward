using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.RMS
{

    [Table("[V_Role]", DbType.SqlServer)]

    public partial class V_Role : EntityBase
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
        public String RoleName
        {
            get { return GetPropertyValue<String>("RoleName"); }
            set { SetPropertyValue("RoleName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Remarks
        {
            get { return GetPropertyValue<String>("Remarks"); }
            set { SetPropertyValue("Remarks", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CreateBy
        {
            get { return GetPropertyValue<String>("CreateBy"); }
            set { SetPropertyValue("CreateBy", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? CreateTime
        {
            get { return GetPropertyValue<DateTime?>("CreateTime"); }
            set { SetPropertyValue("CreateTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String ModifyBy
        {
            get { return GetPropertyValue<String>("ModifyBy"); }
            set { SetPropertyValue("ModifyBy", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? ModifyTime
        {
            get { return GetPropertyValue<DateTime?>("ModifyTime"); }
            set { SetPropertyValue("ModifyTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? RoleTypes
        {
            get { return GetPropertyValue<Int32?>("RoleTypes"); }
            set { SetPropertyValue("RoleTypes", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String RoleTypesName
        {
            get { return GetPropertyValue<String>("RoleTypesName"); }
            set { SetPropertyValue("RoleTypesName", value); }
        }
    }

    [Table("[V_Role]", DbType.SqlServer)]
    public  partial class V_RoleSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[V_Role]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[V_Role]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[V_Role]", FieldType.Common, "[Id]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase RoleName = new FieldBase(DbType.SqlServer, "[V_Role]", FieldType.Common, "[RoleName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[V_Role]", FieldType.Common, "[Remarks]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateBy = new FieldBase(DbType.SqlServer, "[V_Role]", FieldType.Common, "[CreateBy]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[V_Role]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ModifyBy = new FieldBase(DbType.SqlServer, "[V_Role]", FieldType.Common, "[ModifyBy]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ModifyTime = new FieldBase(DbType.SqlServer, "[V_Role]", FieldType.Common, "[ModifyTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase RoleTypes = new FieldBase(DbType.SqlServer, "[V_Role]", FieldType.Common, "[RoleTypes]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase RoleTypesName = new FieldBase(DbType.SqlServer, "[V_Role]", FieldType.Common, "[RoleTypesName]");
    }

}
