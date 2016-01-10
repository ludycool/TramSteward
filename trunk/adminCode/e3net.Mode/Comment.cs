using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode
{

    [Table("[Comment]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class Comment : EntityBase
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
        /// 用户Id
        /// </summary>
        public Guid? UserId
        {
            get { return GetPropertyValue<Guid?>("UserId"); }
            set { SetPropertyValue("UserId", value); }
        }

        /// <summary>
        /// 所属文章Id（回复哪编文章）
        /// </summary>
        public Guid? PostId
        {
            get { return GetPropertyValue<Guid?>("PostId"); }
            set { SetPropertyValue("PostId", value); }
        }

        /// <summary>
        /// 星级
        /// </summary>
        public Int32? Star
        {
            get { return GetPropertyValue<Int32?>("Star"); }
            set { SetPropertyValue("Star", value); }
        }

        /// <summary>
        /// 赞
        /// </summary>
        public Int32? Praises
        {
            get { return GetPropertyValue<Int32?>("Praises"); }
            set { SetPropertyValue("Praises", value); }
        }

        /// <summary>
        /// 赞
        /// </summary>
        public Int32? Reports
        {
            get { return GetPropertyValue<Int32?>("Reports"); }
            set { SetPropertyValue("Reports", value); }
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
        /// 作者
        /// </summary>
        public String Author
        {
            get { return GetPropertyValue<String>("Author"); }
            set { SetPropertyValue("Author", value); }
        }

        /// <summary>
        /// 详情
        /// </summary>
        public String Details
        {
            get { return GetPropertyValue<String>("Details"); }
            set { SetPropertyValue("Details", value); }
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
        /// 状态（已审核、开启1，未审核0，关闭2）
        /// </summary>
        public Int32? States
        {
            get { return GetPropertyValue<Int32?>("States"); }
            set { SetPropertyValue("States", value); }
        }

        /// <summary>
        /// 状态（已审核、开启1，未审核0，关闭2）
        /// </summary>
        public Boolean? IsHaveImg
        {
            get { return GetPropertyValue<Boolean?>("IsHaveImg"); }
            set { SetPropertyValue("IsHaveImg", value); }
        }

        /// <summary>
        /// 是否有效
        /// </summary>
        public Boolean? isValid
        {
            get { return GetPropertyValue<Boolean?>("isValid"); }
            set { SetPropertyValue("isValid", value); }
        }

        /// <summary>
        /// 是否删除
        /// </summary>
        public Boolean? isDeleted
        {
            get { return GetPropertyValue<Boolean?>("isDeleted"); }
            set { SetPropertyValue("isDeleted", value); }
        }
    }

    [Table("[Comment]", DbType.SqlServer)]
    public  partial class CommentSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[Comment]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[Comment]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 用户Id
        /// </summary>
        public static readonly FieldBase UserId = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[UserId]");

        /// <summary>
        /// 所属文章Id（回复哪编文章）
        /// </summary>
        public static readonly FieldBase PostId = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[PostId]");

        /// <summary>
        /// 星级
        /// </summary>
        public static readonly FieldBase Star = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[Star]");

        /// <summary>
        /// 赞
        /// </summary>
        public static readonly FieldBase Praises = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[Praises]");

        /// <summary>
        /// 赞
        /// </summary>
        public static readonly FieldBase Reports = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[Reports]");

        /// <summary>
        /// 类别
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[Category]");

        /// <summary>
        /// 作者
        /// </summary>
        public static readonly FieldBase Author = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[Author]");

        /// <summary>
        /// 详情
        /// </summary>
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[Details]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[AddTime]");

        /// <summary>
        /// 状态（已审核、开启1，未审核0，关闭2）
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[States]");

        /// <summary>
        /// 状态（已审核、开启1，未审核0，关闭2）
        /// </summary>
        public static readonly FieldBase IsHaveImg = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[IsHaveImg]");

        /// <summary>
        /// 是否有效
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[Comment]", FieldType.Common, "[isDeleted]");
    }

}
