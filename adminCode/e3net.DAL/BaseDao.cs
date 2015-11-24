﻿using System;
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