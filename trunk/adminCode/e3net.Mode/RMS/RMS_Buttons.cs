using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;
namespace e3net.Mode.RMS 
{

    [Table("[RMS_Buttons]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class RMS_Buttons : EntityBase
    {
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
        }
        public String ButtonName
        {
            get { return GetPropertyValue<String>("ButtonName"); }
            set { SetPropertyValue("ButtonName", value); }
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
    }

    [Table("[RMS_Buttons]", DbType.SqlServer)]
    public class RMS_ButtonsSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[RMS_Buttons]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[RMS_Buttons]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[RMS_Buttons]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase ButtonName = new FieldBase(DbType.SqlServer, "[RMS_Buttons]", FieldType.Common, "[ButtonName]");
        public static readonly FieldBase OrderNo = new FieldBase(DbType.SqlServer, "[RMS_Buttons]", FieldType.Common, "[OrderNo]");
        public static readonly FieldBase Icon = new FieldBase(DbType.SqlServer, "[RMS_Buttons]", FieldType.Common, "[Icon]");
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[RMS_Buttons]", FieldType.Common, "[Remarks]");
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[RMS_Buttons]", FieldType.Common, "[CreateTime]");
        public static readonly FieldBase ModifyTime = new FieldBase(DbType.SqlServer, "[RMS_Buttons]", FieldType.Common, "[ModifyTime]");
        public static readonly FieldBase ValueName = new FieldBase(DbType.SqlServer, "[RMS_Buttons]", FieldType.Common, "[ValueName]");
        public static readonly FieldBase FunctionName = new FieldBase(DbType.SqlServer, "[RMS_Buttons]", FieldType.Common, "[FunctionName]");
    }

}
