using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.YhSys 
{

    [Table("[V_Doctor]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class V_Doctor : EntityBase
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
        /// 医院ID
        /// </summary>
        public Guid? HospitalId
        {
            get { return GetPropertyValue<Guid?>("HospitalId"); }
            set { SetPropertyValue("HospitalId", value); }
        }

        /// <summary>
        /// 科室Id
        /// </summary>
        public Guid? DepartmentId
        {
            get { return GetPropertyValue<Guid?>("DepartmentId"); }
            set { SetPropertyValue("DepartmentId", value); }
        }

        /// <summary>
        /// 姓名
        /// </summary>
        public String CName
        {
            get { return GetPropertyValue<String>("CName"); }
            set { SetPropertyValue("CName", value); }
        }
       
        /// <summary>
        /// 头像地址
        /// </summary>
        public String ImgeUrl
        {
            get { return GetPropertyValue<String>("ImgeUrl"); }
            set { SetPropertyValue("ImgeUrl", value); }
        }
          /// <summary>
        /// 头擅长
        /// </summary>
        public String GoodAt
        {
            get { return GetPropertyValue<String>("GoodAt"); }
            set { SetPropertyValue("GoodAt", value); }
        }
        /// <summary>
        /// 电话
        /// </summary>
        public String Tel
        {
            get { return GetPropertyValue<String>("Tel"); }
            set { SetPropertyValue("Tel", value); }
        }

        /// <summary>
        /// 职位
        /// </summary>
        public String Position
        {
            get { return GetPropertyValue<String>("Position"); }
            set { SetPropertyValue("Position", value); }
        }

        /// <summary>
        /// 简介
        /// </summary>
        public String Introduction
        {
            get { return GetPropertyValue<String>("Introduction"); }
            set { SetPropertyValue("Introduction", value); }
        }

        /// <summary>
        /// 上班时间
        /// </summary>
        public String WorkTime
        {
            get { return GetPropertyValue<String>("WorkTime"); }
            set { SetPropertyValue("WorkTime", value); }
        }

        /// <summary>
        /// 工作地址
        /// </summary>
        public String WorkWhere
        {
            get { return GetPropertyValue<String>("WorkWhere"); }
            set { SetPropertyValue("WorkWhere", value); }
        }

        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime? AddTime
        {
            get { return GetPropertyValue<DateTime?>("AddTime"); }
            set { SetPropertyValue("AddTime", value); }
        }

        /// <summary>
        /// 更新时间
        /// </summary>
        public DateTime? UpdateTime
        {
            get { return GetPropertyValue<DateTime?>("UpdateTime"); }
            set { SetPropertyValue("UpdateTime", value); }
        }

        /// <summary>
        /// 部门名称
        /// </summary>
        public String DepartmentName
        {
            get { return GetPropertyValue<String>("DepartmentName"); }
            set { SetPropertyValue("DepartmentName", value); }
        }
        /// <summary>
        /// 状态1启用2禁用
        /// </summary>
        public Int32? States
        {
            get { return GetPropertyValue<Int32?>("States"); }
            set { SetPropertyValue("States", value); }
        }
    }

    [Table("[V_Doctor]", DbType.SqlServer)]
    public class V_DoctorSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[V_Doctor]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[V_Doctor]");
        } 
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase HospitalId = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[HospitalId]");
        public static readonly FieldBase DepartmentId = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[DepartmentId]");
        public static readonly FieldBase CName = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[CName]");
        public static readonly FieldBase ImgeUrl = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[ImgeUrl]");
        public static readonly FieldBase GoodAt = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[GoodAt]");
        public static readonly FieldBase Tel = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[Tel]");
        public static readonly FieldBase Position = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[Position]");
        public static readonly FieldBase Introduction = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[Introduction]");
        public static readonly FieldBase WorkTime = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[WorkTime]");
        public static readonly FieldBase WorkWhere = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[WorkWhere]");
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[AddTime]");
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[UpdateTime]");
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[States]");
        public static readonly FieldBase DepartmentName = new FieldBase(DbType.SqlServer, "[V_Doctor]", FieldType.Common, "[DepartmentName]");
    }

}
