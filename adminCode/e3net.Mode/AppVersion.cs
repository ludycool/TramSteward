using Moon.Orm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.Mode
{
    [Table("[AppVersion]", DbType.SqlServer)]
    public class AppVersionSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer, "[AppVersion]", fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer, "[AppVersion]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[AppVersion]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[AppVersion]", FieldType.Common, "[Category]");
        public static readonly FieldBase CName = new FieldBase(DbType.SqlServer, "[AppVersion]", FieldType.Common, "[CName]");
        public static readonly FieldBase Version = new FieldBase(DbType.SqlServer, "[AppVersion]", FieldType.Common, "[Version]");
        public static readonly FieldBase Url = new FieldBase(DbType.SqlServer, "[AppVersion]", FieldType.Common, "[Url]");
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[AppVersion]", FieldType.Common, "[Remarks]");
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[AppVersion]", FieldType.Common, "[AddTime]");
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[AppVersion]", FieldType.Common, "[UpdateTime]");
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[AppVersion]", FieldType.Common, "[States]");
    }


    [Table("[AppVersion]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class AppVersion : EntityBase
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
        /// 类别
        /// </summary>
        public String Category
        {
            get { return GetPropertyValue<String>("Category"); }
            set { SetPropertyValue("Category", value); }
        }

        /// <summary>
        /// 名称
        /// </summary>
        public String CName
        {
            get { return GetPropertyValue<String>("CName"); }
            set { SetPropertyValue("CName", value); }
        }

        /// <summary>
        /// 版本号
        /// </summary>
        public String Version
        {
            get { return GetPropertyValue<String>("Version"); }
            set { SetPropertyValue("Version", value); }
        }

        /// <summary>
        /// 地址
        /// </summary>
        public String Url
        {
            get { return GetPropertyValue<String>("Url"); }
            set { SetPropertyValue("Url", value); }
        }

        /// <summary>
        /// 备注
        /// </summary>
        public String Remarks
        {
            get { return GetPropertyValue<String>("Remarks"); }
            set { SetPropertyValue("Remarks", value); }
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
        /// <summary>
        /// 状态 1强制更新 0可以不更新
        /// </summary>
        public Int32? States
        {
            get { return GetPropertyValue<Int32?>("States"); }
            set { SetPropertyValue("States", value); }
        }
    }


}
