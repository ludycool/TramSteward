using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;
namespace e3net.Mode.RMS 
{

    [Table("[RMS_MenuButtons]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class RMS_MenuButtons : EntityBase
    {
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
        }
        public Guid ManuId
        {
            get { return GetPropertyValue<Guid>("ManuId"); }
            set { SetPropertyValue("ManuId", value); }
        }
        public Guid ButtonId
        {
            get { return GetPropertyValue<Guid>("ButtonId"); }
            set { SetPropertyValue("ButtonId", value); }
        }
        public int OrderNo {
            get { return GetPropertyValue<int>("OrderNo"); }
            set { SetPropertyValue("OrderNo", value); }
        
        }
    }

    [Table("[RMS_MenuButtons]", DbType.SqlServer)]
    public class RMS_MenuButtonsSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[RMS_MenuButtons]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[RMS_MenuButtons]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[RMS_MenuButtons]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase ManuId = new FieldBase(DbType.SqlServer, "[RMS_MenuButtons]", FieldType.ForeignKey, "[ManuId]");
        public static readonly FieldBase ButtonId = new FieldBase(DbType.SqlServer, "[RMS_MenuButtons]", FieldType.ForeignKey, "[ButtonId]");
        public static readonly FieldBase OrderNo = new FieldBase(DbType.SqlServer, "[RMS_MenuButtons]", FieldType.ForeignKey, "[OrderNo]");
    }

}
