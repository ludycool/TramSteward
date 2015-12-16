using e3net.BLL.RMS;
using e3net.common.SysMode;
using e3net.Mode.RMS;
using e3net.Mode.V_mode;
using ESUI.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using TZHSWEET.Common;

namespace ESUI.httpHandle
{
    /// <summary>
    /// SystemSetHandler 的摘要说明
    /// </summary>
    public class SystemSetHandler : IHttpHandler, IRequiresSessionState //就是这样显示的实现一下，不用实现什么方法
    {
        public RMS_RoleBiz RDBiz = new RMS_RoleBiz();
        AdminUserInfo UserData;
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            //   context.Response.Write("Hello World");
            string action = context.Request["action"];
            UserData = context.Session["UserData"] as AdminUserInfo; 
            switch (action)
            {
                case "GetList":

                    context.Response.Write(GetList());
                    context.Response.End();
                    break;
            
            
            }

        }
        public String GetList()
        {

            int pageIndex = 1;
            int pageSize =500;
            ////字段排序
            //String sortField = Request["sortField"];
            //String sortOrder = Request["sortOrder"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "RMS_Role";
            pc.sys_Where = "1=1";
            pc.sys_Order = "Id";
            if (!UserData.RoleId.ToString().Equals("fb38f312-0078-4f44-9cda-1183c8042db8"))//不是系统管理员，不请允许显示系统管理员
            {
                pc.sys_Where += " and Id!='fb38f312-0078-4f44-9cda-1183c8042db8'";
            }

            List<RMS_Role> list2 = RDBiz.GetPagingData(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = RMS_RoleSet.ControlId.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);

            return JsonHelper.ToJson( dic,true);
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