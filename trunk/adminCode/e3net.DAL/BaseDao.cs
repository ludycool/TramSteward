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






        public long GetCount<T2>(WhereExpression expression) where T2 : MQLBase
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;
                return db.GetCount<T2>(expression);
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

        public int Remove<T2>(WhereExpression expression) where T2 : MQLBase
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.Remove<T2>(expression);
            }
        }

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
        public T GetEntity(MQLBase mql)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.GetEntity<T>(mql);
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

        public DataSet ExecuteProToDataSet(string procName, params DbParameter[] parameters)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteProToDataSet(procName, parameters);
            }
        }

        public int ExecuteProWithNonQuery(string procName, params DbParameter[] parameters)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteProWithNonQuery(procName, parameters);
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

        public int ExecuteSqlWithNonQuery(string sql)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteSqlWithNonQuery(sql);
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





        public int ExecuteSqlWithNonQuery(string sql, params object[] values)
        {
            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                return db.ExecuteSqlWithNonQuery(sql, values);
            }
        }

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
                        new SqlParameter("@fieldNames", SqlDbType.NVarChar,200) ,            
                        new SqlParameter("@pageSize", SqlDbType.Int,4) ,            
                        new SqlParameter("@page", SqlDbType.Int,4) ,            
                     new SqlParameter("@pageCount", SqlDbType.Int,4 ) ,            
                        new SqlParameter("@counts", SqlDbType.Int,4) ,            
                        new SqlParameter("@fieldSort", SqlDbType.NVarChar,200) ,                      
                        new SqlParameter("@condition", SqlDbType.NVarChar,200) ,            
                        new SqlParameter("@keyID", SqlDbType.NVarChar,100) ,            
                        new SqlParameter("@distinct", SqlDbType.Bit,1)                
              
            };



            parameters[0].Value = pc.sys_Table;
            parameters[1].Value = pc.sys_Fields;
            parameters[2].Value = pc.sys_PageSize;
            parameters[3].Value = pc.sys_PageIndex;
            parameters[4].Direction = ParameterDirection.Output;

            parameters[5].Direction = ParameterDirection.Output;
            parameters[6].Value = pc.sys_Order;
            parameters[7].Value = pc.sys_Where;
            parameters[8].Value = pc.sys_Key;
            parameters[9].Value = 0;


            using (var db = GetDb())
            {
                //  db.DebugEnabled = true;

                List<T2> list = db.ExecuteProToOwnList<T2>("proc_DataPagingList", parameters);
                pc.RCount = Convert.ToInt32(parameters[5].Value);
                pc.PCount = Convert.ToInt32(parameters[4].Value);
                return list;
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

            string Table = GetTableName();
            string sql = GetPageString(Fields, Table, pageIndex, pageSize, WhereStr, " dbo.fnGetDistance(" + Latitude + "," + Longitude + ",[Latitude],[Longitude]) asc ");
            DataSet ds = ExecuteSqlToDataSet(sql);
            return ds;
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
            StringBuilder sql = new StringBuilder();
            sql.AppendFormat(" select *,dbo.fnGetDistance({0},{1},[Latitude],[Longitude]) as distance from {2} where ", Latitude, Longitude, GetTableName());

            if (string.IsNullOrEmpty(WhereStr))
            {
                sql.Append(WhereStr + " and  ");
            }
            sql.AppendFormat("{0} < dbo.fnGetDistance({1},{2},[Latitude],[Longitude]) ", minKM, Latitude, Longitude);
            if (MaxKM > 0)
            {
                sql.AppendFormat(" and {0} > dbo.fnGetDistance({1},{2},[Latitude],[Longitude]) ", MaxKM, Latitude, Longitude);
            }
            DataSet ds = ExecuteSqlToDataSet(sql.ToString());
            return ds;
        }
        private string GetTableName()
        {
            string name = typeof(T).Name;
            return name;
        }
        /// <summary>
        /// 生成分页语句
        /// </summary>
        /// <param name="tableName">数据表名</param>
        /// <param name="whereString">Where后面的条件</param>
        /// <returns></returns>
        public String GetPageString(string felds, string tableName, int _pagerIndex, int _pagerSize, string WhereString, string _orderString)
        {
            StringBuilder sql = new StringBuilder();
            if (string.IsNullOrEmpty(_orderString))//排序不能为空
            {

                _orderString = " ID desc";
            }
            sql.Append("(select row_number() over (order by " + _orderString + ") as rowId," + felds + " from " + tableName);//查询语句
            if (!string.IsNullOrEmpty(WhereString))
            {
                sql.Append(" where " + WhereString);
            }
            if (_pagerIndex > 0)
            {
                _pagerIndex = _pagerIndex - 1;
            }
            int StartRecord = (_pagerIndex) * _pagerSize + 1;
            int EndRecord = StartRecord + _pagerSize - 1;
            string dd = sql.ToString();
            sql.Clear();
            sql.Append(" select *  from " + dd + ") as t where rowId between " + StartRecord + " and " + EndRecord);
            //if (!string.IsNullOrEmpty(_orderString))
            //{
            //    sql.Append(" ORDER BY " + _orderString);
            //}
            return sql.ToString();
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





    }


}
