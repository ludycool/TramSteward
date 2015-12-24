using e3net.BLL;
using e3net.Mode;
using e3net.Mode.HttpView;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.httpSever
{
    /// <summary>
    /// File_ImageHandler 的摘要说明
    /// </summary>
    public class File_ImageHandler : IHttpHandler
    {

        // 请求例子  /httpSever/File_ImageHandler.ashx?json={"jsonEntity":{"Id":"f1ad47b7-0c2d-4732-8503-5ef07dcb5759"},"action":"GetFileById"}
        File_ImageBiz OPBiz = new File_ImageBiz();
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                switch (httpObject["action"].ToString())
                {
                    case "GetFileById":
                        string Id = httpObject["jsonEntity"]["Id"].ToString();
                        var Where = File_ImageSet.SelectAll().Where(File_ImageSet.ToId.Equal(Id));
                        List<File_Image> listf = OPBiz.GetEntities(Where);
                        if (listf != null && listf.Count > 0)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(listf, true);
                        }
                        else
                        {
                            resultMode.Code = 0;
                            resultMode.Msg = "没有数据";
                            resultMode.Data = "[]";
                        }
                        break;
                    case "HttpUploadImg":
                        #region  http上传返回路径
                        if (context.Request.Files.Count > 0)
                        {
                            string FullRouteSet = "";
                            for (int i = 0; i < context.Request.Files.Count; i++)
                            {
                                HttpPostedFile hpFile = context.Request.Files[i];
                                if (!String.IsNullOrEmpty(hpFile.FileName))
                                {
                                    string ext = System.IO.Path.GetExtension(hpFile.FileName);
                                    if (hpFile.ContentType != "image/jpeg" || hpFile.ContentType != "image/pjpeg")
                                    {

                                        //给文件取随及名 
                                        Random ran = new Random();
                                        int RandKey = ran.Next(100, 999);
                                   string    FileName = DateTime.Now.ToString("yyyyMMddhhmmss") + "_" + RandKey + ext;
                                        //保存文件 
                                        string path = context.Request.MapPath(FileName);

                                        string uriString = System.Web.HttpContext.Current.Server.MapPath("~/Upload/").ToString();

                                      string FullRoute = "/Upload/" + path.Substring(path.LastIndexOf("\\") + 1);
                                        hpFile.SaveAs(uriString + FullRoute.Substring(FullRoute.LastIndexOf("/") + 1));
                                        //提示上传成功 
                                        FullRouteSet += FullRoute + "|";
                                    }
                                }
                            }
                            FullRouteSet = FullRouteSet.Substring(0, FullRouteSet.Length - 1);
                            resultMode.Code = 11;
                            resultMode.Msg = "成功添加";
                            resultMode.Data = FullRouteSet;
                            ;
                        }
                        else
                        {
                            resultMode.Code = 0;
                            resultMode.Msg = "没有文件";
                            resultMode.Data = "";

                        }
                        #endregion

                        break;
                    case "UploadFileBase64":
                        #region  字节方式上传文件
                        string BtyeString = httpObject["jsonEntity"]["BtyeString"].ToString();
                        string FileName64 = httpObject["jsonEntity"]["FileName"].ToString();
                        string SourceTable = httpObject["jsonEntity"]["SourceTable"].ToString();
                        string ShowName = httpObject["jsonEntity"]["ShowName"].ToString();
                        Guid ToId = new Guid();
                        ToId = Guid.Parse(httpObject["jsonEntity"]["ToId"].ToString());
                        File_Image file = new File_Image();
                        file.Id = Guid.NewGuid();
                        file.ToId = ToId;
                        file.AddTime = DateTime.Now;
                        file.UpdateTime = DateTime.Now;
                        file.SourceTable = SourceTable;
                        file.ShowName = ShowName;
                        file.Route = "/upload/image";

                        file.FileName = DateTime.Now.ToString("yyyyMMddhhmmss") + "_" + FileName64;
                        file.FullRoute = "/upload/image/" + file.FileName;
                        string path64 = context.Server.MapPath(file.Route);
                        byte[] bytes = Convert.FromBase64String(BtyeString);
                        System.IO.MemoryStream ms = new System.IO.MemoryStream(bytes);
                        System.Drawing.Bitmap b = (System.Drawing.Bitmap)System.Drawing.Image.FromStream(ms);
                        //图片保存路径
                        b.Save(path64 + "/" + file.FileName);

                        object res = OPBiz.Add(file);

                        resultMode.Code = 11;
                        resultMode.Msg = "上传成功";
                        resultMode.Data = file.FullRoute;
                        #endregion
                        break;
                    case "HttpUploadFile":
                        #region  http上传文件
                        File_Image Rmodel = JsonHelper.FromJson<File_Image>(httpObject["jsonEntity"].ToString());
                        Rmodel.AddTime = DateTime.Now;
                        Rmodel.UpdateTime = DateTime.Now;
                        Rmodel.Route = "/upload/image/";
                        string idSet = "";
                        if (context.Request.Files.Count > 0)
                        {
                            for (int i = 0; i < context.Request.Files.Count; i++)
                            {

                                HttpPostedFile hpFile = context.Request.Files[i];
                                if (!String.IsNullOrEmpty(hpFile.FileName))
                                {

                                    Rmodel.Id = Guid.NewGuid();
                                    #region
                                    //给文件取随及名 
                                    Random ran = new Random();
                                    int RandKey = ran.Next(100, 999);
                                    Rmodel.FileName = DateTime.Now.ToString("yyyyMMddhhmmss") + "_" + RandKey + "_" + hpFile.FileName.Substring(hpFile.FileName.LastIndexOf("\\") + 1);
                                    Rmodel.FullRoute = Rmodel.Route + Rmodel.FileName;
                                    //保存文件 
                                    string uriString = System.Web.HttpContext.Current.Server.MapPath("~/upload/image/").ToString();
                                    hpFile.SaveAs(uriString + Rmodel.FileName);
                                    #endregion

                                    //提示上传成功 
                                    OPBiz.Add(Rmodel);
                                    idSet += Rmodel.Id + "|";

                                }

                            }

                            resultMode.Code = 11;
                            resultMode.Msg = "成功添加";
                            resultMode.Data = idSet;
                        }
                        else
                        {
                            resultMode.Code = 0;
                            resultMode.Msg = "没有文件";
                            resultMode.Data = Rmodel.Id.ToString();

                        }
                        #endregion
                        break;


                }
            }
            catch (Exception ex)
            {
                resultMode.Code = -11;
                resultMode.Msg = "系统出错";
                resultMode.Data = ex.ToString();
            }
            context.Response.Write(JsonHelper.ToJson(resultMode, true));
            context.Response.End();
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