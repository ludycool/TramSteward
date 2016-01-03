using e3net.BLL;
using e3net.Mode;
using e3net.Mode.HttpView;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.appweb.ServerHandle
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
                case "GetSysItem"://获取自定义词典

                    string ItemType = context.Request["ItemType"];
                    context.Response.Write(GetSysItem(ItemType));
                    context.Response.End();

                    break;
            }
        }
        public string GetSysItem(string ItemType)
        {
            HttpReSultMode resultMode = new HttpReSultMode();
            var sql = SysItemSet.SelectAll().Where(SysItemSet.ItemType.Equal(ItemType)).OrderByASC(SysItemSet.OrderID);
            List<SysItem> AllList = OPBiz.GetOwnList<SysItem>(sql);
            resultMode.Code = 11;
            resultMode.Data = JsonHelper.ToJson(AllList, true);
            resultMode.Msg = "获取成功";
            return JsonHelper.ToJson(resultMode, true);

        }
       

        public string GetSonDictionary(string ValueName)
        {
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {
                var sql = Sys_DictionarySet.SelectAll().Where(Sys_DictionarySet.ValueName.StartWith(ValueName));
                List<Sys_Dictionary> listAll = OPBiz.GetOwnList<Sys_Dictionary>(sql);
                if (listAll != null && listAll.Count > 0)
                {
                    resultMode.Code = 11;
                    resultMode.Msg = "获取成功";
                    resultMode.Data = JsonHelper.ToJson(listAll, true);
                }
                else
                {
                    resultMode.Code = 0;
                    resultMode.Msg = "没有数据";
                    resultMode.Data = "[]";
                }
            }
            catch (Exception ex)
            {
                resultMode.Code = -11;
                resultMode.Data = ex.ToString();
            }
            string result = JsonHelper.ToJson(resultMode, true);
            return result;
        }
        public string GetSonDictionaryNo(string ValueName)
        {
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {
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
                    resultMode.Code = 11;
                    resultMode.Msg = "获取成功";
                    resultMode.Data = JsonHelper.ToJson(listAll, true);
                }
                else
                {
                    resultMode.Code = 0;
                    resultMode.Msg = "没有数据";
                    resultMode.Data = "[]";
                }
            }
            catch (Exception ex)
            {
                resultMode.Code = -11;
                resultMode.Data = ex.ToString();
            }
            string result = JsonHelper.ToJson(resultMode, true);
            return result;
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