 /*  作者：       tianzh
 *  创建时间：   2012/6/9 23:10:11
 *
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using System.Web.Script.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace TZHSWEET.Common
{

    /// <summary>
    /// 提供了一个关于json的辅助类
    /// </summary>
   public static class JsonHelper
   {

       #region Method
       /// <summary>
        /// 类对像转换成json格式
        /// </summary> 
        /// <returns></returns>
        public static string ToJson(object t)
        {
            return  JsonConvert.SerializeObject(t, Formatting.Indented,
        new JsonSerializerSettings { NullValueHandling =  NullValueHandling.Include });
        }
       /// <summary>
        /// 类对像转换成json格式
       /// </summary>
       /// <param name="t"></param>
       /// <param name="HasNullIgnore">是否忽略NULL值</param>
       /// <returns></returns>
        public static string ToJson(object t, bool HasNullIgnore)
        {
            if (HasNullIgnore)
                return JsonConvert.SerializeObject(t, Formatting.Indented, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            else
               return ToJson(t);
        }
        /// <summary>
        /// json格式转换
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="strJson"></param>
        /// <returns></returns>
        public static T FromJson<T>(string strJson) where T : class
        {
            if(!strJson.IsNullOrEmpty())
            return JsonConvert.DeserializeObject<T>(strJson);
            return null;
        }
        /// <summary>
        ///  json格式转换 jobject
        /// </summary>
        /// <param name="strJson"></param>
        /// <returns></returns>
        public static JObject FromJson(string strJson)
        {

            JObject jo = (JObject)JsonConvert.DeserializeObject(strJson);
            //string zone = jo["beijing"]["zone"].ToString();
            //string zone_en = jo["beijing"]["zone_en"].ToString(); 
            return jo;
        }
        #endregion

    }
}
