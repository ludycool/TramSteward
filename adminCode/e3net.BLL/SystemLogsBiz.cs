
using e3net.common;
using e3net.DAL;
using e3net.IDAL;
using e3net.Mode;
using Moon.Orm;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Text;

namespace e3net.BLL
{
    //  [Export(typeof(ISystemLogsDao))]
    public class SystemLogsBiz : BaseDao<SystemLogs>, ISystemLogsDao
    {

        /// <summary>
        /// 记录日志
        /// </summary>
        /// <param name="title"></param>
        /// <param name="content"></param>
        /// <param name="Position"></param>
        /// <param name="Category"> 类别 9901系统出错，9902 系统日志</param>
        /// <param name="Contents"></param>
        /// <param name="Sources"></param>
        public static void logv(string title, string Contents, string Position, string Sources, string Category, string ip)
        {
            SystemLogs item = new SystemLogs();
            item.AddTime = DateTime.Now;
            item.title = title;
            item.Position = Position;
            item.Category = Category;
            item.Contents = Contents;
            item.Id = Guid.NewGuid();
            item.Sources = Sources;
            item.ip = ip;
            using (var db = Db.CreateDefaultDb())
            {
                //  db.DebugEnabled = true;

                db.Add(item);
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="title"></param>
        /// <param name="Contents"></param>
        /// <param name="Position"></param>
        /// <param name="Category"> 类别 9901系统出错，9902 系统日志</param>
        /// <param name="Sources"></param>
        public static void logv(string title, string Contents, string Position, string Sources)
        {
            SystemLogs item = new SystemLogs();
            item.AddTime = DateTime.Now;
            item.title = title;
            item.Position = Position;
            item.Category = "9901";
            item.Contents = Contents;
            item.Id = Guid.NewGuid();
            item.Sources = Sources;
            using (var db = Db.CreateDefaultDb())
            {
                //  db.DebugEnabled = true;

                db.Add(item);
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="title"></param>
        /// <param name="Contents"></param>
        /// <param name="Position"></param>
        /// <param name="Category"> 类别 9901系统出错，9902 系统日志</param>
        /// <param name="Sources"></param>
        public static void logv(string title, string Contents, string Sources)
        {
            SystemLogs item = new SystemLogs();
            item.AddTime = DateTime.Now;
            item.title = title;
            item.Position = "";
            item.Category = "9901";
            item.Contents = Contents;
            item.Id = Guid.NewGuid();
            item.Sources = Sources;
            using (var db = Db.CreateDefaultDb())
            {
                //  db.DebugEnabled = true;

                db.Add(item);
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="title"></param>
        /// <param name="Contents"></param>
        /// <param name="Position"></param>
        /// <param name="Category"> 类别 9901系统出错，9902 系统日志</param>
        /// <param name="Sources"></param>
        public static void logv(string title, string Contents)
        {
            SystemLogs item = new SystemLogs();
            item.AddTime = DateTime.Now;
            item.title = title;
            item.Position = "";
            item.Category = "9901";
            item.Contents = Contents;
            item.Id = Guid.NewGuid();
            item.Sources = "";
            using (var db = Db.CreateDefaultDb())
            {
                //  db.DebugEnabled = true;

                db.Add(item);
            }
        }
    }
}
