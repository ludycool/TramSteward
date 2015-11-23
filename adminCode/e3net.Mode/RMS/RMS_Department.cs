using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.RMS
{

    [Table("[RMS_Department]", DbType.SqlServer)]
    public class RMS_DepartmentSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[RMS_Department]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[RMS_Department]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[RMS_Department]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase ParentId = new FieldBase(DbType.SqlServer, "[RMS_Department]", FieldType.Common, "[ParentId]");
        public static readonly FieldBase OrderNo = new FieldBase(DbType.SqlServer, "[RMS_Department]", FieldType.Common, "[OrderNo]");
        public static readonly FieldBase Name = new FieldBase(DbType.SqlServer, "[RMS_Department]", FieldType.Common, "[Name]");
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[RMS_Department]", FieldType.Common, "[Remarks]");
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[RMS_Department]", FieldType.Common, "[CreateTime]");
        public static readonly FieldBase ModifyTime = new FieldBase(DbType.SqlServer, "[RMS_Department]", FieldType.Common, "[ModifyTime]");
        public static readonly FieldBase Icon = new FieldBase(DbType.SqlServer, "[RMS_Department]", FieldType.Common, "[Icon]");
        public static readonly FieldBase YH_HospitalId = new FieldBase(DbType.SqlServer, "[RMS_Department]", FieldType.Common, "[YH_HospitalId]");
    }


    [Table("[RMS_Department]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class RMS_Department : EntityBase
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
        public Guid ParentId
        {
            get { return GetPropertyValue<Guid>("ParentId"); }
            set { SetPropertyValue("ParentId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? OrderNo
        {
            get { return GetPropertyValue<Int32?>("OrderNo"); }
            set { SetPropertyValue("OrderNo", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Name
        {
            get { return GetPropertyValue<String>("Name"); }
            set { SetPropertyValue("Name", value); }
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
        public String Icon
        {
            get { return GetPropertyValue<String>("Icon"); }
            set { SetPropertyValue("Icon", value); }
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
