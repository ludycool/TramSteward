using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;
namespace e3net.Mode.RMS 
{

    [Table("[V_RoleManus]", DbType.SqlServer)]
    public class V_RoleManus : EntityBase
    {
        public Guid ManuId
        {
            get { return GetPropertyValue<Guid>("ManuId"); }
            set { SetPropertyValue("ManuId", value); }
        }
        public Guid? RoleId
        {
            get { return GetPropertyValue<Guid?>("RoleId"); }
            set { SetPropertyValue("RoleId", value); }
        }
        public Guid? ParentManuId
        {
            get { return GetPropertyValue<Guid?>("ParentManuId"); }
            set { SetPropertyValue("ParentManuId", value); }
        }
        public String Remarks
        {
            get { return GetPropertyValue<String>("Remarks"); }
            set { SetPropertyValue("Remarks", value); }
        }
        public Int32? OrderNo
        {
            get { return GetPropertyValue<Int32?>("OrderNo"); }
            set { SetPropertyValue("OrderNo", value); }
        }
        public String ManuName
        {
            get { return GetPropertyValue<String>("ManuName"); }
            set { SetPropertyValue("ManuName", value); }
        }
        public String URL
        {
            get { return GetPropertyValue<String>("URL"); }
            set { SetPropertyValue("URL", value); }
        }
        public Boolean? IsShow
        {
            get { return GetPropertyValue<Boolean?>("IsShow"); }
            set { SetPropertyValue("IsShow", value); }
        }
        public Boolean? IsEnable
        {
            get { return GetPropertyValue<Boolean?>("IsEnable"); }
            set { SetPropertyValue("IsEnable", value); }
        }
        public String Icon
        {
            get { return GetPropertyValue<String>("Icon"); }
            set { SetPropertyValue("Icon", value); }
        }
        public String MIcon
        {
            get { return GetPropertyValue<String>("MIcon"); }
            set { SetPropertyValue("MIcon", value); }
        }
    }

    [Table("[V_RoleManus]", DbType.SqlServer)]
    public class V_RoleManusSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[V_RoleManus]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[V_RoleManus]");
        }
        public static readonly FieldBase ManuId = new FieldBase(DbType.SqlServer, "[V_RoleManus]", FieldType.Common, "[ManuId]");
        public static readonly FieldBase RoleId = new FieldBase(DbType.SqlServer, "[V_RoleManus]", FieldType.Common, "[RoleId]");
        public static readonly FieldBase ParentManuId = new FieldBase(DbType.SqlServer, "[V_RoleManus]", FieldType.Common, "[ParentManuId]");
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[V_RoleManus]", FieldType.Common, "[Remarks]");
        public static readonly FieldBase OrderNo = new FieldBase(DbType.SqlServer, "[V_RoleManus]", FieldType.Common, "[OrderNo]");
        public static readonly FieldBase ManuName = new FieldBase(DbType.SqlServer, "[V_RoleManus]", FieldType.Common, "[ManuName]");
        public static readonly FieldBase URL = new FieldBase(DbType.SqlServer, "[V_RoleManus]", FieldType.Common, "[URL]");
        public static readonly FieldBase IsShow = new FieldBase(DbType.SqlServer, "[V_RoleManus]", FieldType.Common, "[IsShow]");
        public static readonly FieldBase IsEnable = new FieldBase(DbType.SqlServer, "[V_RoleManus]", FieldType.Common, "[IsEnable]");
        public static readonly FieldBase Icon = new FieldBase(DbType.SqlServer, "[V_RoleManus]", FieldType.Common, "[Icon]");
        public static readonly FieldBase MIcon = new FieldBase(DbType.SqlServer, "[V_RoleManus]", FieldType.Common, "[MIcon]");
    }

}
