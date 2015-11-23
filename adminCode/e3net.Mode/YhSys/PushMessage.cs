using Moon.Orm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.Mode.YhSys
{

    [Table("[PushMessage]", DbType.SqlServer)]
    public class PushMessageSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer, "[PushMessage]", fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer, "[PushMessage]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[PushMessage]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase Tags = new FieldBase(DbType.SqlServer, "[PushMessage]", FieldType.Common, "[Tags]");
        public static readonly FieldBase Alias = new FieldBase(DbType.SqlServer, "[PushMessage]", FieldType.Common, "[Alias]");
        public static readonly FieldBase Batch = new FieldBase(DbType.SqlServer, "[PushMessage]", FieldType.Common, "[Batch]");
        public static readonly FieldBase Title = new FieldBase(DbType.SqlServer, "[PushMessage]", FieldType.Common, "[Title]");
        public static readonly FieldBase Contents = new FieldBase(DbType.SqlServer, "[PushMessage]", FieldType.Common, "[Contents]");
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[PushMessage]", FieldType.Common, "[AddTime]");
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[PushMessage]", FieldType.Common, "[UpdateTime]");
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[PushMessage]", FieldType.Common, "[Category]");
        public static readonly FieldBase UserName = new FieldBase(DbType.SqlServer, "[PushMessage]", FieldType.Common, "[UserName]");
    }


    [Table("[PushMessage]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class PushMessage : EntityBase
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
        /// 标签
        /// </summary>
        public String Tags
        {
            get { return GetPropertyValue<String>("Tags"); }
            set { SetPropertyValue("Tags", value); }
        }

        /// <summary>
        /// 别名
        /// </summary>
        public String Alias
        {
            get { return GetPropertyValue<String>("Alias"); }
            set { SetPropertyValue("Alias", value); }
        }

        /// <summary>
        /// 批次
        /// </summary>
        public String Batch
        {
            get { return GetPropertyValue<String>("Batch"); }
            set { SetPropertyValue("Batch", value); }
        }

        /// <summary>
        /// 标题
        /// </summary>
        public String Title
        {
            get { return GetPropertyValue<String>("Title"); }
            set { SetPropertyValue("Title", value); }
        }

        /// <summary>
        /// 正文
        /// </summary>
        public String Contents
        {
            get { return GetPropertyValue<String>("Contents"); }
            set { SetPropertyValue("Contents", value); }
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
        /// 类别
        /// </summary>
        public String Category
        {
            get { return GetPropertyValue<String>("Category"); }
            set { SetPropertyValue("Category", value); }
        }

        /// <summary>
        /// 用户名
        /// </summary>
        public String UserName
        {
            get { return GetPropertyValue<String>("UserName"); }
            set { SetPropertyValue("UserName", value); }
        }

    }


}
