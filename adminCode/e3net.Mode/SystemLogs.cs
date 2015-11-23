using Moon.Orm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.Mode
{
    /// <summary>
    /// 日志
    /// </summary>
    [Table("[SystemLogs]", DbType.SqlServer)]
    public class SystemLogsSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer, "[SystemLogs]", fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer, "[SystemLogs]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[SystemLogs]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase Sources = new FieldBase(DbType.SqlServer, "[SystemLogs]", FieldType.Common, "[Sources]");
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[SystemLogs]", FieldType.Common, "[Category]");
        public static readonly FieldBase title = new FieldBase(DbType.SqlServer, "[SystemLogs]", FieldType.Common, "[title]");
        public static readonly FieldBase Contents = new FieldBase(DbType.SqlServer, "[SystemLogs]", FieldType.Common, "[Contents]");
        public static readonly FieldBase ip = new FieldBase(DbType.SqlServer, "[SystemLogs]", FieldType.Common, "[ip]");
        public static readonly FieldBase Position = new FieldBase(DbType.SqlServer, "[SystemLogs]", FieldType.Common, "[Position]");
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[SystemLogs]", FieldType.Common, "[AddTime]");
    }


    [Table("[SystemLogs]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class SystemLogs : EntityBase
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
        /// 源
        /// </summary>
        public String Sources
        {
            get { return GetPropertyValue<String>("Sources"); }
            set { SetPropertyValue("Sources", value); }
        }

        /// <summary>
        /// 类别 9901系统出错，9902 系统日志
        /// </summary>
        public String Category
        {
            get { return GetPropertyValue<String>("Category"); }
            set { SetPropertyValue("Category", value); }
        }

        /// <summary>
        /// 标题
        /// </summary>
        public String title
        {
            get { return GetPropertyValue<String>("title"); }
            set { SetPropertyValue("title", value); }
        }

        /// <summary>
        /// 内容
        /// </summary>
        public String Contents
        {
            get { return GetPropertyValue<String>("Contents"); }
            set { SetPropertyValue("Contents", value); }
        }

        /// <summary>
        /// ip
        /// </summary>
        public String ip
        {
            get { return GetPropertyValue<String>("ip"); }
            set { SetPropertyValue("ip", value); }
        }

        /// <summary>
        /// 位置
        /// </summary>
        public String Position
        {
            get { return GetPropertyValue<String>("Position"); }
            set { SetPropertyValue("Position", value); }
        }

        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime? AddTime
        {
            get { return GetPropertyValue<DateTime?>("AddTime"); }
            set { SetPropertyValue("AddTime", value); }
        }
    }
    }

