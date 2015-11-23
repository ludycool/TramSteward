using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;
namespace e3net.Mode.RMS 
{

    [Table("[V_RoleManuButtons]", DbType.SqlServer)]
    public class V_RoleManuButtons : EntityBase
    {
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
        public Int32? OrderNo
        {
            get { return GetPropertyValue<Int32?>("OrderNo"); }
            set { SetPropertyValue("OrderNo", value); }
        }
        public String Icon
        {
            get { return GetPropertyValue<String>("Icon"); }
            set { SetPropertyValue("Icon", value); }
        }
        public String Remarks
        {
            get { return GetPropertyValue<String>("Remarks"); }
            set { SetPropertyValue("Remarks", value); }
        }
        public DateTime? CreateTime
        {
            get { return GetPropertyValue<DateTime?>("CreateTime"); }
            set { SetPropertyValue("CreateTime", value); }
        }
        public DateTime? ModifyTime
        {
            get { return GetPropertyValue<DateTime?>("ModifyTime"); }
            set { SetPropertyValue("ModifyTime", value); }
        }
        public String ValueName
        {
            get { return GetPropertyValue<String>("ValueName"); }
            set { SetPropertyValue("ValueName", value); }
        }
        public String FunctionName
        {
            get { return GetPropertyValue<String>("FunctionName"); }
            set { SetPropertyValue("FunctionName", value); }
        }
        public String ButtonName
        {
            get { return GetPropertyValue<String>("ButtonName"); }
            set { SetPropertyValue("ButtonName", value); }
        }
        /// <summary>
        /// 按钮的Id
        /// </summary>
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
        }
    }

    [Table("[V_RoleManuButtons]", DbType.SqlServer)]
    public class V_RoleManuButtonsSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[V_RoleManuButtons]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[V_RoleManuButtons]");
        }
        public static readonly FieldBase RoleId = new FieldBase(DbType.SqlServer, "[V_RoleManuButtons]", FieldType.Common, "[RoleId]");
        public static readonly FieldBase ManuId = new FieldBase(DbType.SqlServer, "[V_RoleManuButtons]", FieldType.Common, "[ManuId]");
        public static readonly FieldBase OrderNo = new FieldBase(DbType.SqlServer, "[V_RoleManuButtons]", FieldType.Common, "[OrderNo]");
        public static readonly FieldBase Icon = new FieldBase(DbType.SqlServer, "[V_RoleManuButtons]", FieldType.Common, "[Icon]");
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[V_RoleManuButtons]", FieldType.Common, "[Remarks]");
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[V_RoleManuButtons]", FieldType.Common, "[CreateTime]");
        public static readonly FieldBase ModifyTime = new FieldBase(DbType.SqlServer, "[V_RoleManuButtons]", FieldType.Common, "[ModifyTime]");
        public static readonly FieldBase ValueName = new FieldBase(DbType.SqlServer, "[V_RoleManuButtons]", FieldType.Common, "[ValueName]");
        public static readonly FieldBase FunctionName = new FieldBase(DbType.SqlServer, "[V_RoleManuButtons]", FieldType.Common, "[FunctionName]");
        public static readonly FieldBase ButtonName = new FieldBase(DbType.SqlServer, "[V_RoleManuButtons]", FieldType.Common, "[ButtonName]");
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[V_RoleManuButtons]", FieldType.Common, "[Id]");
    }

}
