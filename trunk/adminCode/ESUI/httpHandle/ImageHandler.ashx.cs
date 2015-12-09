using e3net.BLL;
using e3net.Mode;
using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using TZHSWEET.Common;


namespace ESUI.httpHandle
{
    /// <summary>
    /// ImageHandler 的摘要说明
    /// </summary>
    public class ImageHandler : IHttpHandler
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
            JsonMessage jmsg = new JsonMessage();
            switch (action)
            {

                case "addImg"://上传文件
                    #region
                    string FileIdSet = "";
                    List<File_Image> listFile = new List<File_Image>();
                    bool IsValid = true;//检查只能为图片,仅小于100k可以上传
                    string messge = "";
                    string[] Types = { ".jpg", ".jpeg", ".gif", ".bmp", ".png", ".ico" };
                    int lenth = 1024 * 500;//一百k
                    if (context.Request.Files.Count > 0)
                    {

                        for (int i = 0; i < context.Request.Files.Count; i++)
                        {
                            HttpPostedFile hpFile = context.Request.Files[i];
                            if (!String.IsNullOrEmpty(hpFile.FileName))
                            {
                                string ext = System.IO.Path.GetExtension(hpFile.FileName);
                                if (!Types.Contains(ext.ToLower()))
                                {
                                    IsValid = false;
                                    messge = "只能为图片类型";
                                    break;

                                }
                                else if (hpFile.ContentLength > lenth)
                                {
                                    IsValid = false;
                                    messge = "文件不能大于" + lenth / 1024 + "kB";
                                    break;
                                }

                            }
                        }

                    }
                    if (context.Request.Files.Count > 0 && IsValid)
                    {

                        for (int i = 0; i < context.Request.Files.Count; i++)
                        {

                            File_Image file = new File_Image();
                            file.Id = Guid.NewGuid();
                            if (context.Request["ToId"] == null)
                                file.ToId = file.Id;
                            else
                            {
                                file.ToId = ToId;
                            }
                            file.AddTime = DateTime.Now;
                            file.UpdateTime = DateTime.Now;
                            file.SourceTable = SourceTable;

                            file.ShowName = ShowName;
                            HttpPostedFile hpFile = context.Request.Files[i];
                            if (!String.IsNullOrEmpty(hpFile.FileName))
                            {
                                string ext = System.IO.Path.GetExtension(hpFile.FileName);
                                if (hpFile.ContentType != "image/jpeg" || hpFile.ContentType != "image/pjpeg")
                                {

                                    file.FileType = "图片";
                                    file.Suffix = ext;
                                    //给文件取随及名 
                                    Random ran = new Random();
                                    file.FileName = hpFile.FileName.Substring(hpFile.FileName.LastIndexOf("\\") + 1);
                                    if (String.IsNullOrEmpty(file.ShowName))
                                    {
                                        file.ShowName = file.FileName;
                                    }
                                    int RandKey = ran.Next(100, 999);
                                    file.FileName = DateTime.Now.ToString("yyyyMMddhhmmss") + "_" + RandKey + ext;
                                    string fileName = file.FileName;
                                    //保存文件 
                                    string path = context.Request.MapPath(fileName);

                                    string uriString = System.Web.HttpContext.Current.Server.MapPath("~/Upload/").ToString();
                                    file.Route = "/Upload/";
                                    file.FullRoute = "/Upload/" + path.Substring(path.LastIndexOf("\\") + 1);
                                    hpFile.SaveAs(uriString + file.FullRoute.Substring(file.FullRoute.LastIndexOf("/") + 1));
                                    //提示上传成功 
                                }


                                /*添加一条信息;*/
                                object res = OPBiz.Add(file);
                                listFile.Add(file);
                                FileIdSet += file.FullRoute + ",";
                            }
                        }
                    }
                    if (IsValid)
                    {
                        if (!String.IsNullOrEmpty(FileIdSet))
                        {
                            JsonMsg = JsonHelper.ToJson(new JsonMessage
                            {
                                Success = true,
                                Data = JsonHelper.ToJson(listFile, true),
                                Message = "添加成功"
                            });
                        }
                        else
                        {
                            JsonMsg = JsonHelper.ToJson(new JsonMessage
                            {
                                Success = true,
                                Data = "[]",
                                Message = "没有数据"
                            });
                        }
                    }
                    else
                    {
                        JsonMsg = JsonHelper.ToJson(new JsonMessage
                        {
                            Success = false,
                            Data = "[]",
                            Message = messge
                        });

                    }

                    context.Response.Write(JsonMsg);
                    context.Response.End();

                    #endregion
                    break;
                case "addFile"://上传文件
                    #region
                    string FileIdSet2 = "";
                    List<File_Image> listFile2 = new List<File_Image>();
                    bool IsValid2 = true;//检查只能为图片,仅小于100k可以上传
                    string messge2 = "";
                    int lenth2 = 1024 * 20000;//一百k
                    if (context.Request.Files.Count > 0)
                    {

                        for (int i = 0; i < context.Request.Files.Count; i++)
                        {
                            HttpPostedFile hpFile = context.Request.Files[i];
                            if (!String.IsNullOrEmpty(hpFile.FileName))
                            {
                                string ext = System.IO.Path.GetExtension(hpFile.FileName);

                                if (hpFile.ContentLength > lenth2)
                                {
                                    IsValid = false;
                                    messge2 = "文件不能大于" + lenth2 / 1024 + "kB";
                                    break;
                                }

                            }
                        }

                    }
                    if (context.Request.Files.Count > 0 && IsValid2)
                    {

                        for (int i = 0; i < context.Request.Files.Count; i++)
                        {

                            File_Image file = new File_Image();
                            file.Id = Guid.NewGuid();
                            if (context.Request["ToId"] == null)
                                file.ToId = file.Id;
                            else
                            {
                                file.ToId = ToId;
                            }
                            file.AddTime = DateTime.Now;
                            file.UpdateTime = DateTime.Now;
                            file.SourceTable = SourceTable;

                            file.ShowName = ShowName;
                            HttpPostedFile hpFile = context.Request.Files[i];
                            if (!String.IsNullOrEmpty(hpFile.FileName))
                            {
                                string ext = System.IO.Path.GetExtension(hpFile.FileName);
                                if (hpFile.ContentType != "image/jpeg" || hpFile.ContentType != "image/pjpeg")
                                {

                                    file.FileType = "文件";
                                    file.Suffix = ext;
                                    //给文件取随及名 
                                    Random ran = new Random();
                                    file.FileName = hpFile.FileName.Substring(hpFile.FileName.LastIndexOf("\\") + 1);
                                    if (String.IsNullOrEmpty(file.ShowName))
                                    {
                                        file.ShowName = file.FileName;
                                    }
                                    int RandKey = ran.Next(100, 999);
                                    file.FileName = DateTime.Now.ToString("yyyyMMddhhmmss") + "_" + RandKey + ext;
                                    string fileName = file.FileName;
                                    //保存文件 
                                    string path = context.Request.MapPath(fileName);

                                    string uriString = System.Web.HttpContext.Current.Server.MapPath("~/Upload/file/").ToString();
                                    file.Route = "/Upload/file/";
                                    file.FullRoute = "/Upload/file/" + path.Substring(path.LastIndexOf("\\") + 1);
                                    hpFile.SaveAs(uriString + file.FullRoute.Substring(file.FullRoute.LastIndexOf("/") + 1));
                                    //提示上传成功 
                                }


                                /*添加一条信息;*/
                                object res = OPBiz.Add(file);
                                listFile2.Add(file);
                                FileIdSet2 += file.FullRoute + ",";
                            }
                        }
                    }
                    if (IsValid2)
                    {
                        if (!String.IsNullOrEmpty(FileIdSet2))
                        {
                            JsonMsg = JsonHelper.ToJson(new JsonMessage
                            {
                                Success = true,
                                Data = JsonHelper.ToJson(listFile2, true),
                                Message = "添加成功"
                            });
                        }
                        else
                        {
                            JsonMsg = JsonHelper.ToJson(new JsonMessage
                            {
                                Success = true,
                                Data = "[]",
                                Message = "没有数据"
                            });
                        }
                    }
                    else
                    {
                        JsonMsg = JsonHelper.ToJson(new JsonMessage
                        {
                            Success = false,
                            Data = "[]",
                            Message = messge2
                        });

                    }

                    context.Response.Write(JsonMsg);
                    context.Response.End();

                    #endregion
                    break;
                case "GetFileList"://根据id集获取文件列表

                    #region
                    string id = context.Request["ToId"];
                    if (!string.IsNullOrEmpty(id))
                    {
                        var mql = File_ImageSet.SelectAll().Where(File_ImageSet.ToId.Equal(id));
                        List<File_Image> list = OPBiz.GetOwnList(mql);
                        context.Response.Write(JsonHelper.ToJson(list, true));
                    }
                    else
                    {
                        context.Response.Write("[]");
                    }
                    context.Response.End();
                    #endregion
                    break;
                case "SaveToid"://保存更改ToID

                    #region

                    string Tid = context.Request["ToId"];
                    string IdSet = context.Request["IdSet"];
                    if (!string.IsNullOrEmpty(context.Request["ToId"]) && !string.IsNullOrEmpty(context.Request["IdSet"]))
                    {
                        string sql = " update File_Image set ToId='" + Tid + "'  where Id in (" + IdSet + ")";
                        int i = OPBiz.ExecuteSqlWithNonQuery(sql);
                        if (i > 0)
                        {
                            jmsg.Success = true;
                            jmsg.Data = i.ToString();
                            jmsg.Message = "上传成功";
                        }
                        else
                        {
                            jmsg.Success = false;
                            jmsg.Data = "0";
                            jmsg.Message = "上传失败";
                        }
                    }
                    else
                    {

                        jmsg.Success = false;
                        jmsg.Data = "0";
                        jmsg.Message = "数据为空";
                    }
                    context.Response.Write(JsonHelper.ToJson(jmsg, true));
                    context.Response.End();

                    #endregion
                    break;
                case "Delfile"://删除文件

                    #region


                    if (!string.IsNullOrEmpty(context.Request["IdSet"]))
                    {
                        string sql = " delete from  File_Image   where Id in (" + context.Request["IdSet"] + ")";
                        int i = OPBiz.ExecuteSqlWithNonQuery(sql);
                        if (i > 0)
                        {
                            jmsg.Success = true;
                            jmsg.Data = i.ToString();
                            jmsg.Message = "删除成功";
                        }
                        else
                        {
                            jmsg.Success = false;
                            jmsg.Data = "0";
                            jmsg.Message = "删除失败";
                        }
                    }
                    else
                    {

                        jmsg.Success = false;
                        jmsg.Data = "0";
                        jmsg.Message = "数据为空";
                    }
                    context.Response.Write(JsonHelper.ToJson(jmsg, true));
                    context.Response.End();

                    #endregion
                    break;

                case "Download":
                    #region
                    if (!string.IsNullOrEmpty(context.Request["Url"]))
                    {
                        // 检查请求下载文件的有效性
                        string filePath = System.Web.HttpContext.Current.Server.MapPath(context.Request["Url"]);
                        if (!System.IO.File.Exists(filePath))
                        {
                            throw new ArgumentException("无效文件，文件不存在!");
                        }

                        //WriteFile实现下载
                        string fileName = context.Request["fileName"];//客户端保存的文件名
                        FileInfo fileInfo = new FileInfo(filePath);
                        context.Response.Clear();
                        context.Response.ClearContent();
                        context.Response.ClearHeaders();
                        context.Response.AddHeader("Content-Disposition", "attachment;filename=" + fileName);
                        context.Response.AddHeader("Content-Length", fileInfo.Length.ToString());
                        context.Response.AddHeader("Content-Transfer-Encoding", "binary");
                        context.Response.ContentType = "application/octet-stream";
                        context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
                        context.Response.WriteFile(fileInfo.FullName);
                        context.Response.Flush();
                        context.Response.End();


                    }
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