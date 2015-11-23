using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.AgSys
{

    [Table("[ClientUser]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class ClientUser : EntityBase
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
        public String TrueName
        {
            get { return GetPropertyValue<String>("TrueName"); }
            set { SetPropertyValue("TrueName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String UserName
        {
            get { return GetPropertyValue<String>("UserName"); }
            set { SetPropertyValue("UserName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Pwd
        {
            get { return GetPropertyValue<String>("Pwd"); }
            set { SetPropertyValue("Pwd", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Phone
        {
            get { return GetPropertyValue<String>("Phone"); }
            set { SetPropertyValue("Phone", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Address
        {
            get { return GetPropertyValue<String>("Address"); }
            set { SetPropertyValue("Address", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Category
        {
            get { return GetPropertyValue<String>("Category"); }
            set { SetPropertyValue("Category", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Details
        {
            get { return GetPropertyValue<String>("Details"); }
            set { SetPropertyValue("Details", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Double? Longitude
        {
            get { return GetPropertyValue<Double?>("Longitude"); }
            set { SetPropertyValue("Longitude", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Double? Latitude
        {
            get { return GetPropertyValue<Double?>("Latitude"); }
            set { SetPropertyValue("Latitude", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? LocationUpdateTime
        {
            get { return GetPropertyValue<DateTime?>("LocationUpdateTime"); }
            set { SetPropertyValue("LocationUpdateTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? AddTime
        {
            get { return GetPropertyValue<DateTime?>("AddTime"); }
            set { SetPropertyValue("AddTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? UpdateTime
        {
            get { return GetPropertyValue<DateTime?>("UpdateTime"); }
            set { SetPropertyValue("UpdateTime", value); }
        }
    }

    [Table("[ClientUser]", DbType.SqlServer)]
    public class ClientUserSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[ClientUser]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[ClientUser]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[TrueName]");
        public static readonly FieldBase UserName = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[UserName]");
        public static readonly FieldBase Pwd = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[Pwd]");
        public static readonly FieldBase Phone = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[Phone]");
        public static readonly FieldBase Address = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[Address]");
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[Category]");
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[Details]");
        public static readonly FieldBase Longitude = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[Longitude]");
        public static readonly FieldBase Latitude = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[Latitude]");
        public static readonly FieldBase LocationUpdateTime = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[LocationUpdateTime]");
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[AddTime]");
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[ClientUser]", FieldType.Common, "[UpdateTime]");
    }

}
