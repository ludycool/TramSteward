using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode
{

    [Table("[File_Image]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public class File_Image : EntityBase
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
        public Guid? ToId
        {
            get { return GetPropertyValue<Guid?>("ToId"); }
            set { SetPropertyValue("ToId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String ShowName
        {
            get { return GetPropertyValue<String>("ShowName"); }
            set { SetPropertyValue("ShowName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String FileName
        {
            get { return GetPropertyValue<String>("FileName"); }
            set { SetPropertyValue("FileName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String SourceTable
        {
            get { return GetPropertyValue<String>("SourceTable"); }
            set { SetPropertyValue("SourceTable", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Route
        {
            get { return GetPropertyValue<String>("Route"); }
            set { SetPropertyValue("Route", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String FullRoute
        {
            get { return GetPropertyValue<String>("FullRoute"); }
            set { SetPropertyValue("FullRoute", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Suffix
        {
            get { return GetPropertyValue<String>("Suffix"); }
            set { SetPropertyValue("Suffix", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String FileType
        {
            get { return GetPropertyValue<String>("FileType"); }
            set { SetPropertyValue("FileType", value); }
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

    [Table("[File_Image]", DbType.SqlServer)]
    public class File_ImageSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[File_Image]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[File_Image]");
        }
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[File_Image]", FieldType.OnlyPrimaryKey, "[Id]");
        public static readonly FieldBase ToId = new FieldBase(DbType.SqlServer, "[File_Image]", FieldType.Common, "[ToId]");
        public static readonly FieldBase ShowName = new FieldBase(DbType.SqlServer, "[File_Image]", FieldType.Common, "[ShowName]");
        public static readonly FieldBase FileName = new FieldBase(DbType.SqlServer, "[File_Image]", FieldType.Common, "[FileName]");
        public static readonly FieldBase SourceTable = new FieldBase(DbType.SqlServer, "[File_Image]", FieldType.Common, "[SourceTable]");
        public static readonly FieldBase Route = new FieldBase(DbType.SqlServer, "[File_Image]", FieldType.Common, "[Route]");
        public static readonly FieldBase FullRoute = new FieldBase(DbType.SqlServer, "[File_Image]", FieldType.Common, "[FullRoute]");
        public static readonly FieldBase Suffix = new FieldBase(DbType.SqlServer, "[File_Image]", FieldType.Common, "[Suffix]");
        public static readonly FieldBase FileType = new FieldBase(DbType.SqlServer, "[File_Image]", FieldType.Common, "[FileType]");
        public static readonly FieldBase AddTime = new FieldBase(DbType.SqlServer, "[File_Image]", FieldType.Common, "[AddTime]");
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[File_Image]", FieldType.Common, "[UpdateTime]");
    }

}
