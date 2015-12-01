using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using Moon.Orm;
using System.Data;
using e3net.common.SysMode;
namespace e3net.IDAL
{
    /// <summary>
    /// 泛型通用数据访问层接口的基接口
    /// </summary>
    public interface IBaseDao<T> where T : EntityBase,   new()
    {
      

        /// <summary>
        /// 添加实体
        /// </summary>
        /// <param name="entity"></param>
        /// <returns>如果系统自动设置主键,则返回该主键</returns>
         object Add(EntityBase entity);

        /// <summary>
        /// 更新实体
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        int Update(EntityBase entity);

        /// <summary>
        /// 设置数据isDeleted 为0，
        /// </summary>
        /// <param name="Idfied">id或列名称</param>
        /// <param name="IdSet">id集，","号隔开如："3","4"</param>
        /// <returns></returns>
        int DelForSetDelete(string Idfied, string IdSet);
       

        /// <summary>
        /// 获取指定实体集
        /// </summary>
        /// <param name="mql"></param>
        /// <returns></returns>
        List<T> GetEntities(MQLBase mql);

        /// <summary>
        /// 获取自定义实体集
        /// </summary>
        /// <param name="mql"></param>
        /// <returns></returns>
        List<T> GetOwnList(MQLBase mql);

        List<T2> GetOwnList<T2>(MQLBase mql) where T2:new();

        /// <summary>
        /// 获取实体
        /// </summary>
        /// <param name="mql"></param>
        /// <returns></returns>
        T GetEntity(MQLBase mql);

        /// <summary>
        /// 获取结构的第一行第一列数据
        /// </summary>
        /// <param name="mql"></param>
        /// <returns></returns>
        Object ExecuteScalar(MQLBase mql);

        /// <summary>
        /// 获取结构的第一行第一列数据
        /// </summary>
        /// <param name="mql"></param>
        /// <returns></returns>
        MObject ExecuteScalarToMObject(MQLBase mql);

        /// <summary>
        /// 执行存储过程结果反馈到DataSet
        /// </summary>
        /// <param name="parameters"></param>
        /// <param name="procName"></param>
        /// <returns></returns>
        DataSet ExecuteProToDataSet(String procName, params DbParameter[] parameters);

        /// <summary>
        /// 执行存储过程,返回受影响的行数
        /// </summary>
        /// <param name="parameters"></param>
        /// <param name="procName"></param>
        /// <returns></returns>
        int ExecuteProWithNonQuery(String procName, params DbParameter[] parameters);

        /// <summary>
        /// 执行存储过程结果反馈到List
        /// </summary>
        /// <param name="parameters"></param>
        /// <param name="procName"></param>
        /// <returns></returns>
        List<T> ExecuteProToOwnList(String procName, params DbParameter[] parameters);


        /// <summary>
        /// 执行sql结果反馈到DataSet,自己注意sql注入问题
        /// </summary>
        /// <param name="parameters"></param>
        /// <param name="procName"></param>
        /// <returns></returns>
        DataSet ExecuteSqlToDataSet(string sql);

        DataSet ExecuteSqlToDataSet(string sql, params object[] values);

        /// <summary>
        /// 执行sql,返回受影响的行数,自己注意sql注入问题
        /// </summary>
        /// <param name="parameters"></param>
        /// <param name="procName"></param>
        /// <returns></returns>
        int ExecuteSqlWithNonQuery(string sql);

        /// <summary>
        /// 执行sql结果反馈到List,自己注意sql注入问题
        /// </summary>
        /// <param name="parameters"></param>
        /// <param name="procName"></param>
        /// <returns></returns>
        List<T> ExecuteSqlToOwnList(string sql) ;


        List<T> ExecuteSqlToOwnList(string sql, params object[] values) ;

        int ExecuteSqlWithNonQuery(string sql, params object[] values);

        List<Dictionary<string, MObject>> ExecuteSqlToDictionaryList(string sql, params object[] values);

        List<Dictionary<string, MObject>> ExecuteSqlToDictionaryList(string sql);

        List<Dictionary<string, MObject>> GetDictionaryList(MQLBase mql);

        /// <summary>
        /// 执行存储过程获取分页结果反馈到List,
        /// </summary>
        /// <param name="parameters"></param>
        /// <param name="procName"></param>
        /// <returns></returns>
        List<T> GetPagingData(PageClass pc);

     //   DataSet GetPagingDataSet(MQLBase mql, out int sumCout, int pageIndex, int pageSize, string oneOrderbyFieldName);
       /// <summary>
        /// 统计数量，暂时解决执行存储过程无法获得返回值
       /// </summary>
       /// <param name="sqltable"></param>
       /// <param name="sqlwhere"></param>
       /// <returns></returns>
        int GetCountSQL(string sqltable,string sqlwhere);
        /// <summary>
        /// 获取DbDataReader
        /// </summary>
        /// <param name="commandText"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        DbDataReader GetDbDataReader(string commandText, CommandType type);

        /// <summary>
        /// 获取强类型的LIST T 集合，4.0下可以用 dynamic list来获赋值
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="classname"></param>
        /// <returns></returns>
        object GetDynamicList(string sql, string classname);

        /// <summary>
        /// 获取第一行第一列的数据到object
        /// </summary>
        /// <param name="mql"></param>
        /// <returns></returns>
        object GetScalar(MQLBase mql);

        /// <summary>
        /// 获取第一行第一列的数据到MObject
        /// </summary>
        /// <param name="mql"></param>
        /// <returns></returns>
        MObject GetScalarToMObject(MQLBase mql);

        /// <summary>
        /// 根据sql获取实体
        /// </summary>
        /// <param name="where">where 后面的条件</param>
        /// <param name="orderString">order by 后面的条件</param>
        /// <returns></returns>
        T GetModelByWhere(string sql, string classname);

    }
}
