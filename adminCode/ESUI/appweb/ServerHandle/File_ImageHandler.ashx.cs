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
    /// File_ImageHandler 的摘要说明
    /// </summary>
    public class File_ImageHandler : IHttpHandler
    {

        public File_ImageBiz OPBiz = new File_ImageBiz();
        public void ProcessRequest(HttpContext context)
        {

            context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");
            string action = context.Request["action"];
            string SourceTable = "";
            if (context.Request["SourceTable"] != null)
            {
                SourceTable = context.Request["SourceTable"];
            }
            Guid ToId = new Guid();

            if (context.Request["ToId"] != null)
            {
                ToId = Guid.Parse(context.Request["ToId"]);
            }
            string ShowName = "";
            if (context.Request["ShowName"] != null)
            {
                ShowName = context.Request["ShowName"];
            }
            string JsonMsg = "";
            HttpReSultMode resultMode = new HttpReSultMode();
            switch (action)
            {
                case "GetFileList"://根据id集获取文件列表
                    #region
                    string id = context.Request["ToId"];
                    if (!string.IsNullOrEmpty(id))
                    {
                        var mql = File_ImageSet.SelectAll().Where(File_ImageSet.ToId.Equal(id));
                        List<File_Image> list = OPBiz.GetOwnList(mql);
                        resultMode.Code = 11;
                        resultMode.Data = JsonHelper.ToJson(list, true);
                        resultMode.Msg = "获取成功";

                        context.Response.Write(JsonHelper.ToJson(resultMode, true));
                    }
                    else
                    {
                        context.Response.Write("[]");
                    }
                    context.Response.End();
                    #endregion
                    break;





            }
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