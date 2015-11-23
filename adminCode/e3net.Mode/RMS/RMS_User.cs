using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.RMS
{

    [Table("[RMS_User]", DbType.SqlServer)]
    public class RMS_UserSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[RMS_User]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[RMS_User]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase LoginName = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[LoginName]");
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[TrueName]");
        public static readonly FieldBase Password = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[Password]");
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[CreateTime]");
        public static readonly FieldBase ModifyTime = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[ModifyTime]");
        public static readonly FieldBase DepartmentId = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[DepartmentId]");
        public static readonly FieldBase YH_HospitalId = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[YH_HospitalId]");
    }


    [Table("[RMS_User]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class RMS_User : EntityBase
    {

        /// <summary>
        /// 主键
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
        public Guid? YH_HospitalId
        {
            get { return GetPropertyValue<Guid?>("YH_HospitalId"); }
            set { SetPropertyValue("YH_HospitalId", value); }
        }
    }


}
