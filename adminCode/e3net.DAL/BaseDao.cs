using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Moon.Orm;
using System.Data.Sql;
using e3net.IDAL;
using e3net.common.SysMode;
using Moon.Orm.Util;
using e3net.tools;

namespace e3net.DAL
{
    /// <summary>
    /// 基本服务 提供增、删、改、按ID查 等通用功能
    /// </summary>
    /// <typeparam name="T">实体类</typeparam>
    public class BaseDao<T> : IBaseDao<T> where T : EntityBase, new()
    {
        bool IsDefultConnection = true;
        string DbConnectionName;
        /// <summary>
        /// 数据库连接参数
        /// </summary>
        /// <param name="IsDefult">是否默认连接 DefaultConnection</param>
        /// <param name="ConnectionName">连接名</param>
        public void SetDb(bool IsDefult, string ConnectionName)
        {
            IsDefultConnection = IsDefult;
            DbConnectionName = ConnectionName;
        }
        public Db GetDb()
        {
            if (IsDefultConnection)
            {
                //  Db db=Db.CreateDefaultDb();
                // db.TransactionEnabled=true;//开启事务
                return Db.CreateDefaultDb();
            }
            else
            {
                // Db db =Db.CreateDbByConfigName(DbConnectionName);
                // db.TransactionEnabled = true;//开启事务
                return Db.CreateDbByConfigName(DbConnectionName); ;
            }
        }

        #region 增 改 删
        public object Add(EntityBase entity)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.Add(entity);
            }
        }

        public int Update(EntityBase entity)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.Update(entity);
            }
        }


        public int Remove<T2>(WhereExpression expression) where T2 : MQLBase
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.Remove<T2>(expression);
            }
        }


        #endregion

        #region 自定义
        /// <summary>
        /// 设置数据isDeleted 为0，
        /// </summary>
        /// <param name="Idfied">id或列名称</param>
        /// <param name="IdSet">id集，","号隔开如："3","4"</param>
        /// <returns></returns>
        public int DelForSetDelete(string Idfied, string IdSet)
        {
            DbParameter[] parameters = {
                                            new SqlParameter("@tableName", SqlDbType.NVarChar,200) ,     
			           new SqlParameter("@Idfied", SqlDbType.NVarChar,200) ,            
                        new SqlParameter("@IdSet", SqlDbType.NVarChar,1000)                      
              
            };
            parameters[0].Value = typeof(T).Name; ;
            parameters[1].Value = Idfied;
            parameters[2].Value = IdSet;
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                int res = db.ExecuteProWithNonQuery("proc_DelForSetDelete", parameters);
                return res;
            }
        }
        /// <summary>
        /// 字段统计加1
        /// </summary>
        /// <param name="Idfied">id列名称</param>
        /// <param name="IdSet">id</param>
        ///  /// <param name="Countfied">统计的字段</param>
        /// <returns></returns>
        public int SetCout(string Idfied, string Id, string Countfied)
        {
            DbParameter[] parameters = {
                                            new SqlParameter("@tableName", SqlDbType.NVarChar,100) ,    
                                               new SqlParameter("@Countfied", SqlDbType.NVarChar,100) ,    
			           new SqlParameter("@Idfied", SqlDbType.NVarChar,100) ,            
                        new SqlParameter("@Id", SqlDbType.NVarChar,100)                      
              
            };
            parameters[0].Value = typeof(T).Name; ;
            parameters[1].Value = Countfied;
            parameters[2].Value = Idfied;
            parameters[3].Value = Id;
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                int res = db.ExecuteProWithNonQuery("proc_CountOne", parameters);
                return res;
            }
        }

        #endregion

        #region 获取实体 或实体列表


        public List<T> GetEntities(MQLBase mql)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.GetEntities<T>(mql);
            }
        }

        public List<T> GetOwnList(MQLBase mql)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.GetOwnList<T>(mql);
            }
        }
        public List<T2> GetOwnList<T2>(MQLBase mql) where T2 : new()
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.GetOwnList<T2>(mql);
            }
        }
        public List<T> ExecuteProToOwnList(string procName, params DbParameter[] parameters)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteProToOwnList<T>(procName, parameters);
            }
        }

        public List<T> ExecuteSqlToOwnList(string sql)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteSqlToOwnList<T>(sql);
            }
        }

        public List<T> ExecuteSqlToOwnList(string sql, params object[] values)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteSqlToOwnList<T>(sql, values);
            }
        }

        public T GetEntity(MQLBase mql)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.GetEntity<T>(mql);
            }
        }
        /// <summary>
        /// 根据sql获取实体
        /// </summary>
        /// <param name="where">where 后面的条件</param>
        /// <param name="orderString">order by 后面的条件</param>
        /// <returns></returns>
        public T GetModelByWhere(string where, string orderString)
        {
            string tablename = typeof(T).Name;
            string sql = " select top 1 * from " + tablename;
            if (!string.IsNullOrEmpty(where))
            {
                sql += " where  " + where;
            }
            if (!string.IsNullOrEmpty(orderString))
            {
                sql += " order by  " + orderString;
            }
            DataSet ds = ExecuteSqlToDataSet(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                T mode = ToEntityByEmit.GetMode<T>(ds.Tables[0].Rows[0]);
                return mode;
            }
            else
            {
                return null;
            }
        }
        #endregion

        #region 获取 DataSet

        public DataSet ExecuteSqlToDataSet(string sql)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteSqlToDataSet(sql);
            }
        }

        public DataSet ExecuteSqlToDataSet(string sql, params object[] values)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteSqlToDataSet(sql, values);
            }
        }

        public DataSet ExecuteProToDataSet(string procName, params DbParameter[] parameters)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteProToDataSet(procName, parameters);
            }
        }
        #endregion

        #region  执行 或查数量
        public long GetCount<T2>(WhereExpression expression) where T2 : MQLBase
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;
                return db.GetCount<T2>(expression);
            }
        }
        public int GetCountSQL(string sqltable, string sqlwhere)
        {
            using (var db = GetDb())
            {
                StringBuilder sql = new StringBuilder();
                sql.AppendFormat("select count(*) from {0}", sqltable);
                if (!string.IsNullOrEmpty(sqlwhere))
                {
                    sql.AppendFormat(" where {0}", sqlwhere);
                }
                //  string sql = "select count(*) from ControlButtons";
                //  db.DebugEnabled = true;
                DataSet ds = db.ExecuteSqlToDataSet(sql.ToString());
                int count = 0;
                int.TryParse(ds.Tables[0].Rows[0][0].ToString(), out count);
                return count;

            }
        }

        public StringBuilder GetCountSQL(WhereExpression expression)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                throw new NotImplementedException();
            }
        }

        public object ExecuteScalar(MQLBase mql)
        {
            throw new NotImplementedException();
        }

        public MObject ExecuteScalarToMObject(MQLBase mql)
        {
            throw new NotImplementedException();
        }

        public int ExecuteProWithNonQuery(string procName, params DbParameter[] parameters)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteProWithNonQuery(procName, parameters);
            }
        }
        public int ExecuteSqlWithNonQuery(string sql)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteSqlWithNonQuery(sql);
            }
        }
        public int ExecuteSqlWithNonQuery(string sql, params object[] values)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteSqlWithNonQuery(sql, values);
            }
        }

        #endregion

        #region  返回 List<Dictionary<string, MObject>>
        public List<Dictionary<string, MObject>> ExecuteSqlToDictionaryList(string sql, params object[] values)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteSqlToDictionaryList(sql, values);
            }
        }
        public List<Dictionary<string, MObject>> ExecuteSqlToDictionaryList(string sql)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteSqlToDictionaryList(sql);
            }
        }
        public List<Dictionary<string, MObject>> GetDictionaryList(MQLBase mql)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.GetDictionaryList(mql);
            }
        }

        #endregion

        #region  分页
        public List<T> GetPagerToOwnList(MQLBase mql, out int sumCout, int pageIndex, int pageSize, string oneOrderbyFieldName)
        {
            int pagecout = 0;
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                List<T> list = db.GetPagerToOwnList<T>(mql, out pagecout, out sumCout, pageIndex, pageSize, oneOrderbyFieldName);
                return list;
            }
        }

        

        public List<T> GetPagingData(PageClass pc)
        {

            return GetPagingData<T>(pc);

        }
        public List<T2> GetPagingData<T2>(PageClass pc) where T2 : new()
        {
            DbParameter[] parameters = {
			           new SqlParameter("@tableName", SqlDbType.NVarChar,200) ,            
                        new SqlParameter("@strGetFields", SqlDbType.NVarChar,200) ,   
                         new SqlParameter("@strOrder", SqlDbType.NVarChar,200) ,  
                        new SqlParameter("@PageSize", SqlDbType.Int,16) ,            
                        new SqlParameter("@PageIndex", SqlDbType.Int,16) ,            
                     new SqlParameter("@TotalCount", SqlDbType.Int,16 ) ,            
                        new SqlParameter("@strWhere", SqlDbType.NVarChar,200)         
              
            };
            parameters[0].Value = pc.sys_Table;
            parameters[1].Value = pc.sys_Fields;
            parameters[2].Value = pc.sys_Order;
            parameters[3].Value = pc.sys_PageSize;
            parameters[4].Value = pc.sys_PageIndex;
            parameters[5].Direction = ParameterDirection.Output;
            parameters[6].Value = pc.sys_Where;


            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                List<T2> list = db.ExecuteProToOwnList<T2>("sp_PaginationEx", parameters);
                pc.RCount = Convert.ToInt32(parameters[5].Value);
                pc.PCount = pc.RCount / pc.sys_PageIndex;
                return list;
            }
        }

        public DataSet GetPagingDataP(PageClass pc)
        {
            DbParameter[] parameters = {
			           new SqlParameter("@tableName", SqlDbType.NVarChar,200) ,            
                        new SqlParameter("@strGetFields", SqlDbType.NVarChar,200) ,   
                         new SqlParameter("@strOrder", SqlDbType.NVarChar,200) ,  
                        new SqlParameter("@PageSize", SqlDbType.Int,16) ,            
                        new SqlParameter("@PageIndex", SqlDbType.Int,16) ,            
                     new SqlParameter("@TotalCount", SqlDbType.Int,16 ) ,            
                        new SqlParameter("@strWhere", SqlDbType.NVarChar,200)         
              
            };

            parameters[0].Value = pc.sys_Table;
            parameters[1].Value = pc.sys_Fields;
            parameters[2].Value = pc.sys_Order;
            parameters[3].Value = pc.sys_PageSize;
            parameters[4].Value = pc.sys_PageIndex;
            parameters[5].Direction = ParameterDirection.Output;
            parameters[6].Value = pc.sys_Where;
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                DataSet ds = db.ExecuteProToDataSet("sp_PaginationEx", parameters);
                pc.RCount = Convert.ToInt32(parameters[5].Value);
                pc.PCount = pc.RCount / pc.sys_PageIndex;
                return ds;
            }
        }
        /// <summary>
        /// 简单的
        /// </summary>
        /// <param name="mql"></param>
        /// <param name="sumCout"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="oneOrderbyFieldName"></param>
        /// <returns></returns>
        public DataSet GetPagingDataSet(MQLBase mql, int pageIndex, int pageSize, string orderSql)
        {
            int sumcout = 0;
            int pagecout = 0;
            DataSet ds = GetPagingDataSet(mql, out pagecout, out sumcout, pageIndex, pageSize, orderSql);
            return ds;

        }
        public DataSet GetPagingDataSet(MQLBase mql, out int pagecout, out int sumCout, int pageIndex, int pageSize, string oneOrderbyFieldName)
        {

            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;
                DataSet ds = db.GetPagerToDataSet(mql, out pagecout, out sumCout, pageIndex, pageSize, oneOrderbyFieldName);
                if (pageIndex > pagecout)
                {
                    return null;
                }
                else
                {
                    return ds;
                }
            }
        }
        /// <summary>
        /// 简单的分页
        /// </summary>
        /// <param name="WhereStr"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="OrderStr"></param>
        /// <returns></returns>
        public DataSet GetPagingDataSet(string WhereStr, int pageIndex, int pageSize, string OrderStr)
        {

            string Fields = "*";
            string Table = GetTableName();
            DbParameter[] parameters = {
			           new SqlParameter("@tableName", SqlDbType.NVarChar,200) ,            
                        new SqlParameter("@strGetFields", SqlDbType.NVarChar,200) ,   
                         new SqlParameter("@strOrder", SqlDbType.NVarChar,200) ,  
                        new SqlParameter("@PageSize", SqlDbType.Int,16) ,            
                        new SqlParameter("@PageIndex", SqlDbType.Int,16) ,            
                     new SqlParameter("@TotalCount", SqlDbType.Int,16 ) ,            
                        new SqlParameter("@strWhere", SqlDbType.NVarChar,200)         
              
            };
            parameters[0].Value = Table;
            parameters[1].Value = Fields;
            parameters[2].Value = OrderStr;
            parameters[3].Value = pageSize;
            parameters[4].Value = pageIndex;
            parameters[5].Direction = ParameterDirection.Output;
            parameters[6].Value = WhereStr;

            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                DataSet ds = db.ExecuteProToDataSet("sp_PaginationEx", parameters);
                return ds;
            }

        }
        /// <summary>
        ///  分页 根据坐标排序从近到运 并添加距离字段distance
        /// </summary>
        /// <param name="WhereStr">where后面的语句</param>
        /// <param name="pageIndex">页index</param>
        /// <param name="pageSize">一页的数量</param>
        /// <param name="Longitude">经度</param>
        /// <param name="Latitude">纬度</param>
        /// <returns></returns>
        public DataSet GetPagingOrderByLL(string WhereStr, int pageIndex, int pageSize, string Longitude, string Latitude)
        {

            string Fields = "*,dbo.fnGetDistance(" + Latitude + "," + Longitude + ",[Latitude],[Longitude]) as distance";
            string OrderStr=" dbo.fnGetDistance(" + Latitude + "," + Longitude + ",[Latitude],[Longitude]) asc ";
            string Table = GetTableName();
            DbParameter[] parameters = {
			           new SqlParameter("@tableName", SqlDbType.NVarChar,200) ,            
                        new SqlParameter("@strGetFields", SqlDbType.NVarChar,200) ,   
                         new SqlParameter("@strOrder", SqlDbType.NVarChar,200) ,  
                        new SqlParameter("@PageSize", SqlDbType.Int,16) ,            
                        new SqlParameter("@PageIndex", SqlDbType.Int,16) ,            
                     new SqlParameter("@TotalCount", SqlDbType.Int,16 ) ,            
                        new SqlParameter("@strWhere", SqlDbType.NVarChar,200)         
              
            };
            parameters[0].Value = Table;
            parameters[1].Value = Fields;
            parameters[2].Value = OrderStr;
            parameters[3].Value = pageSize;
            parameters[4].Value = pageIndex;
            parameters[5].Direction = ParameterDirection.Output;
            parameters[6].Value = WhereStr;

            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                DataSet ds = db.ExecuteProToDataSet("sp_PaginationEx", parameters);
                return ds;
            }
        }
        /// <summary>
        /// 指定范围内 根据坐标排序从近到运 并添加距离字段distance 
        /// </summary>
        /// <param name="WhereStr">where后面的语句</param>
        /// <param name="minKM">至少距离</param>
        /// <param name="MaxKM">最多距离</param>
        /// <param name="Longitude">经度</param>
        /// <param name="Latitude">纬度</param>
        /// <returns></returns>
        public DataSet GetByDistancesOrderByLL(string WhereStr, float minKM, float MaxKM, string Longitude, string Latitude)
        {
            string Fields = "*,dbo.fnGetDistance(" + Latitude + "," + Longitude + ",[Latitude],[Longitude]) as distance";
            string OrderStr = " dbo.fnGetDistance(" + Latitude + "," + Longitude + ",[Latitude],[Longitude]) asc ";
            string Table = GetTableName();
            DbParameter[] parameters = {
			           new SqlParameter("@tableName", SqlDbType.NVarChar,200) ,            
                        new SqlParameter("@strGetFields", SqlDbType.NVarChar,1000) ,   
                         new SqlParameter("@minKM", SqlDbType.NVarChar,200) ,  
                        new SqlParameter("@MaxKM", SqlDbType.NVarChar,200) ,            
                        new SqlParameter("@Longitude", SqlDbType.NVarChar,200) ,             
                     new SqlParameter("@Latitude", SqlDbType.NVarChar,200) ,             
                        new SqlParameter("@strWhere", SqlDbType.NVarChar,1500)  
            };
            parameters[0].Value = Table;
            parameters[1].Value = Fields;
            parameters[2].Value = minKM;
            parameters[3].Value = MaxKM;
            parameters[4].Value = Longitude;
            parameters[5].Value = Latitude;
            parameters[6].Value = WhereStr;

            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                DataSet ds = db.ExecuteProToDataSet("sp_GetByDistancesOrderByLL", parameters);
                return ds;
            }


        }
        private string GetTableName()
        {
            string name = typeof(T).Name;
            return name;
        }

        #endregion

      

        public DbDataReader GetDbDataReader(string commandText, CommandType type)
        {
            using (var db = GetDb())
            {
                return db.GetDbDataReader(commandText, type);
            }
        }

        public object GetDynamicList(string sql, string classname)
        {
            using (var db = GetDb())
            {
                return db.GetDynamicList(sql, classname);

            }
        }

        public object GetScalar(MQLBase mql)
        {
            using (var db = GetDb())
            {
                return db.GetScalar(mql);
            }
        }

        public MObject GetScalarToMObject(MQLBase mql)
        {
            using (var db = GetDb())
            {
                return db.GetScalarToMObject(mql);
            }
        }

    }
}
