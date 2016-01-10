using e3net.BLL;
using e3net.common.SysMode;
using e3net.Mode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.httpHandle
{
    /// <summary>
    /// CommentHandler 的摘要说明
    /// </summary>
    public class CommentHandler : IHttpHandler
    {
        CommentBiz OPBiz = new CommentBiz();
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
            string action = context.Request["action"];
            switch (action)
            {
                case "GetByPostIdPage":
                    string RoleTypes = context.Request["RoleTypes"];
                    context.Response.Write(GetByPostIdPage( context));
                    context.Response.End();
                    break;


            }
        }

        public string GetByPostIdPage(HttpContext context)
        {
            // SelectWhere.selectwherestring(Request["sqlSet"]);
            int pageIndex = context.Request["page"] == null ? 1 : int.Parse(context.Request["page"]);
            int pageSize = context.Request["rows"] == null ? 10 : int.Parse(context.Request["rows"]);
            string PostId = context.Request["PostId"];
            string Where = " PostId='" + PostId + "' and (isDeleted=0)";
            ////字段排序
          String sortField = context.Request["sort"];
          String sortOrder = context.Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "Comment";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<Comment> list2 = OPBiz.GetPagingData<Comment>(pc);

            Dictionary<string, object> dic = new Dictionary<string, object>();
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return JsonHelper.ToJson(dic, true);
        
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