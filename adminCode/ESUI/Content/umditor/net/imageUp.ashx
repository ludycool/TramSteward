<%@ WebHandler Language="C#" Class="imageUp" %>

using System;
using System.Web;
using System.IO;
using System.Collections;
using System.Collections.Generic;

public class imageUp : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentEncoding = System.Text.Encoding.UTF8;
        //上传配置
        string pathbase = "upload/";                                                          //保存路径
        int size = 10;                     //文件大小限制,单位mb                                                                                   //文件大小限制，单位KB
        string[] filetype = { ".gif", ".png", ".jpg", ".jpeg", ".bmp" };                    //文件允许格式

        string callback = context.Request["callback"];
        string editorId = context.Request["editorid"];

        //上传图片
        Hashtable info;

        info = upFile(context, pathbase, filetype, size); //获取上传状态
        string json = BuildJson(info);

        context.Response.ContentType = "text/html";
        if (callback != null)
        {
            context.Response.Write(String.Format("<script>{0}(JSON.parse(\"{1}\"));</script>", callback, json));
        }
        else
        {
            context.Response.Write(json);
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    private string BuildJson(Hashtable info)
    {
        List<string> fields = new List<string>();
        string[] keys = new string[] { "originalName", "name", "url", "size", "state", "type" };
        for (int i = 0; i < keys.Length; i++)
        {
            fields.Add(String.Format("\"{0}\": \"{1}\"", keys[i], info[keys[i]]));
        }
        return "{" + String.Join(",", fields) + "}";
    }
    #region  上传

    string state = "SUCCESS";

    string URL = null;
    string currentType = null;
    string uploadpath = null;
    string filename = null;
    string originalName = null;
    HttpPostedFile uploadFile = null;

    /**
  * 上传文件的主处理方法
  * @param HttpContext
  * @param string
  * @param  string[]
  *@param int
  * @return Hashtable
  */
    public Hashtable upFile(HttpContext cxt, string pathbase, string[] filetype, int size)
    {
        pathbase = pathbase + DateTime.Now.ToString("yyyy-MM-dd") + "/";
        uploadpath = cxt.Server.MapPath(pathbase);//获取文件上传路径

        try
        {
            uploadFile = cxt.Request.Files[0];
            originalName = uploadFile.FileName;

            //目录创建
            createFolder();

            //格式验证
            if (checkType(filetype))
            {
                state = "不允许的文件类型";
            }
            //大小验证
            if (checkSize(size))
            {
                state = "文件大小超出网站限制";
            }
            //保存图片
            if (state == "SUCCESS")
            {
                filename = reName();
                uploadFile.SaveAs(uploadpath + filename);
                URL = pathbase + filename;
            }
        }
        catch (Exception e)
        {
            state = "未知错误";
            URL = "";
        }
        return getUploadInfo();
    }

    /**
 * 上传涂鸦的主处理方法
  * @param HttpContext
  * @param string
  * @param  string[]
  *@param string
  * @return Hashtable
 */
    public Hashtable upScrawl(HttpContext cxt, string pathbase, string tmppath, string base64Data)
    {
        pathbase = pathbase + DateTime.Now.ToString("yyyy-MM-dd") + "/";
        uploadpath = cxt.Server.MapPath(pathbase);//获取文件上传路径
        FileStream fs = null;
        try
        {
            //创建目录
            createFolder();
            //生成图片
            filename = System.Guid.NewGuid() + ".png";
            fs = File.Create(uploadpath + filename);
            byte[] bytes = Convert.FromBase64String(base64Data);
            fs.Write(bytes, 0, bytes.Length);

            URL = pathbase + filename;
        }
        catch (Exception e)
        {
            state = "未知错误";
            URL = "";
        }
        finally
        {
            fs.Close();
            deleteFolder(cxt.Server.MapPath(tmppath));
        }
        return getUploadInfo();
    }

    /**
* 获取文件信息
* @param context
* @param string
* @return string
*/
    public string getOtherInfo(HttpContext cxt, string field)
    {
        string info = null;
        if (cxt.Request.Form[field] != null && !String.IsNullOrEmpty(cxt.Request.Form[field]))
        {
            info = field == "fileName" ? cxt.Request.Form[field].Split(',')[1] : cxt.Request.Form[field];
        }
        return info;
    }

    /**
     * 获取上传信息
     * @return Hashtable
     */
    private Hashtable getUploadInfo()
    {
        Hashtable infoList = new Hashtable();

        infoList.Add("state", state);
        infoList.Add("url", URL);
        infoList.Add("originalName", originalName);
        infoList.Add("name", Path.GetFileName(URL));
        infoList.Add("size", uploadFile.ContentLength);
        infoList.Add("type", Path.GetExtension(originalName));

        return infoList;
    }

    /**
     * 重命名文件
     * @return string
     */
    private string reName()
    {
        return System.Guid.NewGuid() + getFileExt();
    }

    /**
     * 文件类型检测
     * @return bool
     */
    private bool checkType(string[] filetype)
    {
        currentType = getFileExt();
        return Array.IndexOf(filetype, currentType) == -1;
    }

    /**
     * 文件大小检测
     * @param int
     * @return bool
     */
    private bool checkSize(int size)
    {
        return uploadFile.ContentLength >= (size * 1024 * 1024);
    }

    /**
     * 获取文件扩展名
     * @return string
     */
    private string getFileExt()
    {
        string[] temp = uploadFile.FileName.Split('.');
        return "." + temp[temp.Length - 1].ToLower();
    }

    /**
     * 按照日期自动创建存储文件夹
     */
    private void createFolder()
    {
        if (!Directory.Exists(uploadpath))
        {
            Directory.CreateDirectory(uploadpath);
        }
    }

    /**
     * 删除存储文件夹
     * @param string
     */
    public void deleteFolder(string path)
    {
        //if (Directory.Exists(path))
        //{
        //    Directory.Delete(path, true);
        //}
    }
    #endregion


}