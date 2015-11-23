using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.AgSys
{

    [Table("[Comment]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class Comment : EntityBase
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
        public Guid? UserId
        {
            get { return GetPropertyValue<Guid?>("UserId"); }
            set { SetPropertyValue("UserId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Guid? PostId
        {
            get { return GetPropertyValue<Guid?>("PostId"); }
            set { SetPropertyValue("PostId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Guid? CommentId
        {
            get { return GetPropertyValue<Guid?>("CommentId"); }
            set { SetPropertyValue("CommentId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Guid? ToId
        {
            get { return GetPropertyValue<Guid?>("ToId"); }
            set { SetPropertyValue("ToId", value); }
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
        public String Author
        {
            get { return GetPropertyValue<String>("Author"); }
            set { SetPropertyValue("Author", value); }
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
        public DateTime? AddTime
        {
            get { return GetPropertyValue<DateTime?>("AddTime"); }
            set { SetPropertyValue("AddTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? States
        {
            get { return GetPropertyValue<Int32?>("States"); }
            set { SetPropertyValue("States", value); }
        }
    }

    [Table("[Comment]", DbType.SqlServer)]
    public class CommentSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[Comment]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[Comment]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase UserId = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[UserId]");
        public static readonly FieldBase PostId = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[PostId]");
        public static readonly FieldBase CommentId = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[CommentId]");
        public static readonly FieldBase ToId = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[ToId]");
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[Category]");
        public static readonly FieldBase Author = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[Author]");
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[Details]");
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[AddTime]");
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[States]");
    }

}
