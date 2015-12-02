using e3net.BLL;
using e3net.Mode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.httpHandle
{
    /// <summary>
    /// DictionaryHandler 的摘要说明
    /// </summary>
    public class DictionaryHandler : IHttpHandler
    {
        public Sys_DictionaryBiz OPBiz = new Sys_DictionaryBiz();
        public void ProcessRequest(HttpContext context)
        {
            string action = context.Request["action"];
            context.Response.ContentType = "text/plain";
          //  context.Response.Write("Hello World");
            switch (action)
            {

                case "GetSonDictionary":

                    string ValueName = context.Request["ValueName"];
                    context.Response.Write(GetSonDictionary(ValueName));
                    context.Response.End();

                    break;
                case "GetSonDictionaryNo"://除掉本身只要子集

                    string ValueNameNO = context.Request["ValueName"];
                    context.Response.Write(GetSonDictionaryNo(ValueNameNO));
                    context.Response.End();

                    break;
                case "GetSysItem"://除掉本身只要子集

                    string ItemType = context.Request["ItemType"];
                    context.Response.Write(GetSysItem(ItemType));
                    context.Response.End();

                    break;
            }
        }

        public string GetSysItem(string ItemType)
        {
            var sql = SysItemSet.SelectAll().Where(SysItemSet.ItemType.Equal(ItemType)).OrderByASC(SysItemSet.OrderID);
            List<SysItem> AllList = OPBiz.GetOwnList<SysItem>(sql);
            return JsonHelper.ToJson(AllList, true);
        
        }
        public string GetSonDictionary(string ValueName)
        {
             string jsonstring="[]";
            var sql = Sys_DictionarySet.SelectAll().Where(Sys_DictionarySet.ValueName.StartWith(ValueName));
            List<Sys_Dictionary> listAll = OPBiz.GetOwnList<Sys_Dictionary>(sql);
            jsonstring = OPBiz.GetCombotree(listAll);
            

         return   jsonstring;
        }
        public string GetSonDictionaryNo(string ValueName)
        {
            string jsonstring = "[]";
            var sql = Sys_DictionarySet.SelectAll().Where(Sys_DictionarySet.ValueName.StartWith(ValueName));
            List<Sys_Dictionary> listAll = OPBiz.GetOwnList<Sys_Dictionary>(sql);
            if (listAll != null && listAll.Count > 0)
            {
                for (int i = 0; i < listAll.Count; i++)
                {
                    if (listAll[i].ValueName.Equals(ValueName))//去除父级
                    {
                        listAll.Remove(listAll[i]);
                        break;
                    }
                }
                jsonstring = OPBiz.GetCombotree(listAll);
            }

            return jsonstring;
        }
    
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}