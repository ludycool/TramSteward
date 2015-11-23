using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.RMS
{

    [Table("[V_UserRole]", DbType.SqlServer)]
    public class V_UserRoleSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[V_UserRole]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[V_UserRole]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[V_UserRole]", FieldType.Common, "[Id]");
        public static readonly FieldBase LoginName = new FieldBase(DbType.SqlServer, "[V_UserRole]", FieldType.Common, "[LoginName]");
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[V_UserRole]", FieldType.Common, "[TrueName]");
        public static readonly FieldBase Password = new FieldBase(DbType.SqlServer, "[V_UserRole]", FieldType.Common, "[Password]");
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[V_UserRole]", FieldType.Common, "[CreateTime]");
        public static readonly FieldBase ModifyTime = new FieldBase(DbType.SqlServer, "[V_UserRole]", FieldType.Common, "[ModifyTime]");
        public static readonly FieldBase DepartmentId = new FieldBase(DbType.SqlServer, "[V_UserRole]", FieldType.Common, "[DepartmentId]");
        public static readonly FieldBase RoleId = new FieldBase(DbType.SqlServer, "[V_UserRole]", FieldType.Common, "[RoleId]");
        public static readonly FieldBase RoleName = new FieldBase(DbType.SqlServer, "[V_UserRole]", FieldType.Common, "[RoleName]");
        public static readonly FieldBase YH_HospitalId = new FieldBase(DbType.SqlServer, "[V_UserRole]", FieldType.Common, "[YH_HospitalId]");
    }


    [Table("[V_UserRole]", DbType.SqlServer)]

    public class V_UserRole : EntityBase
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
        public String LoginName
        {
            get { return GetPropertyValue<String>("LoginName"); }
            set { SetPropertyValue("LoginName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String TrueName
        {
            get { return GetPropertyValue<String>("TrueName"); }
            set { SetPropertyValue("TrueName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Password
        {
            get { return GetPropertyValue<String>("Password"); }
            set { SetPropertyValue("Password", value); }
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
        public DateTime? ModifyTime
        {
            get { return GetPropertyValue<DateTime?>("ModifyTime"); }
            set { SetPropertyValue("ModifyTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Guid? DepartmentId
        {
            get { return GetPropertyValue<Guid?>("DepartmentId"); }
            set { SetPropertyValue("DepartmentId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Guid? RoleId
        {
            get { return GetPropertyValue<Guid?>("RoleId"); }
            set { SetPropertyValue("RoleId", value); }
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
        public Guid? YH_HospitalId
        {
            get { return GetPropertyValue<Guid?>("YH_HospitalId"); }
            set { SetPropertyValue("YH_HospitalId", value); }
        }
    }


}
