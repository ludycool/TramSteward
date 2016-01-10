
using e3net.BLL;
using e3net.Mode;
using e3net.Mode.HttpView;
using e3net.tools;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TZHSWEET.Common;

namespace ESUI.httpSever
{
    /// <summary>
    /// CommentHandler 的摘要说明
    /// </summary>
    public class CommentHandler : IHttpHandler
    {

        CommentBiz OPBiz = new CommentBiz();

        // 请求例子  /httpSever/CommentHandler.ashx?json={"jsonEntity":{"GetByPostId":""},"action":"GetByPostId"}
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            // context.Response.Write("Hello World");
            HttpReSultMode resultMode = new HttpReSultMode();
            try
            {
                JObject httpObject = JsonHelper.FromJson(context.Request["json"]);
                int pageIndex = 1;
                int pageSize = 10000;
                int res = 0;
                switch (httpObject["action"].ToString())
                {


                    case "add":
                        #region
                        Comment Rmodel = JsonHelper.FromJson<Comment>(httpObject["jsonEntity"].ToString());
                        Rmodel.Id = Guid.NewGuid();
                        Rmodel.AddTime = DateTime.Now;
                        Rmodel.States = 0;
                        Rmodel.isValid = true;
                        Rmodel.isDeleted = false;
                        OPBiz.Add(Rmodel);
                        resultMode.Code = 11;
                        resultMode.Msg = "添加成功";
                        resultMode.Data = Rmodel.Id.ToString();

                        #endregion
                        break;
             
                    case "delete":
                        #region
                        string Id = httpObject["jsonEntity"]["Id"].ToString();
                        //var mqlD = CommentSet.Id.Equal(Id);
                        //int f = OPBiz.Remove<CommentSet>(mqlD);
                        int f = OPBiz.DelForSetDelete("Id", Id);
                        if (f > 0)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "删除成功";
                            resultMode.Data = "";
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Msg = "删除失败";
                            resultMode.Data = "";
                        }
                        #endregion
                        break;
                    case "GetById":
                        #region
                        Id = FilterTools.FilterSpecial(httpObject["jsonEntity"]["Id"].ToString());
                        var mqlG = CommentSet.SelectAll().Where(CommentSet.Id.Equal(Id));
                        Comment modelG = OPBiz.GetEntity(mqlG);
                        if (modelG != null)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(modelG, true);
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Msg = "数据不存在";
                            resultMode.Data = "";
                        }
                        #endregion

                        break;
                    case "GetByPostId":
                        #region
                        string IdG = httpObject["jsonEntity"]["PostId"].ToString();
                        var mqlG2 = CommentSet.SelectAll().Where(CommentSet.PostId.Equal(IdG).And(CommentSet.isDeleted.Equal(0)).And(CommentSet.isValid.Equal(1)));
                       List<Comment> modelG2 = OPBiz.GetEntities(mqlG2);
                        if (modelG2 != null)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(modelG2, true);
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Msg = "数据不存在";
                            resultMode.Data = "";
                        }
                        #endregion

                        break;
                    case "GetByPostIdPage":
                        #region
                        if (httpObject["pageIndex"] != null)
                        {
                            pageIndex = int.Parse(httpObject["pageIndex"].ToString());
                        }

                        if (httpObject["pageSize"] != null)
                        {
                            pageSize = int.Parse(httpObject["pageSize"].ToString());
                        }
                        string PostId = httpObject["jsonEntity"]["PostId"].ToString();
                        int sum = 0;
                        int page = 0;
                        var sqlp = CommentSet.SelectAll().Where(CommentSet.PostId.Equal(PostId).And(CommentSet.isDeleted.Equal(0)).And(CommentSet.isValid.Equal(1)));
                        DataSet listp = OPBiz.GetPagingDataSet(sqlp, out page, out sum, pageIndex, pageSize, "AddTime");
                        if (listp != null)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(listp, true);
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Msg = "数据不存在";
                            resultMode.Data = "";
                        }
                        #endregion
                        break;
                    case "GetByUserId":
                        #region
                        string Idu = httpObject["jsonEntity"]["UserId"].ToString();
                        var mqlu = CommentSet.SelectAll().Where(CommentSet.UserId.Equal(Idu).And(CommentSet.isDeleted.Equal(0)).And(CommentSet.isValid.Equal(1)));
                        List<Comment> listu = OPBiz.GetEntities(mqlu);
                        if (mqlu != null)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(listu, true);
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Msg = "数据不存在";
                            resultMode.Data = "";
                        }
                        #endregion

                        break;
                    case "GetByUserIdPage":
                        #region
                        if (httpObject["pageIndex"] != null)
                        {
                            pageIndex = int.Parse(httpObject["pageIndex"].ToString());
                        }

                        if (httpObject["pageSize"] != null)
                        {
                            pageSize = int.Parse(httpObject["pageSize"].ToString());
                        }
                        string UserId = httpObject["jsonEntity"]["UserId"].ToString();
                        int sum2 = 0;
                        int page2 = 0;
                        var sqlp2 = CommentSet.SelectAll().Where(CommentSet.UserId.Equal(UserId).And(CommentSet.isDeleted.Equal(0)).And(CommentSet.isValid.Equal(1)));
                        DataSet listp2 = OPBiz.GetPagingDataSet(sqlp2, out page2, out sum2, pageIndex, pageSize, "AddTime");
                        if (listp2 != null)
                        {
                            resultMode.Code = 11;
                            resultMode.Msg = "获取成功";
                            resultMode.Data = JsonHelper.ToJson(listp2, true);
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Msg = "数据不存在";
                            resultMode.Data = "";
                        }
                        #endregion
                        break;
                    case "PraiseCount"://点赞量加1
                        Id = FilterTools.FilterSpecial(httpObject["jsonEntity"]["Id"].ToString());
                        res = OPBiz.SetCout("Id", Id, "Praises");
                        if (res > 0)
                        {
                            resultMode.Code = 11;
                            resultMode.Data = res.ToString();
                            resultMode.Msg = "统计成功";
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Data = "0";
                            resultMode.Msg = "统计失败！";
                        }


                        break;
                    case "ReportsCount"://举报加1
                        Id = FilterTools.FilterSpecial(httpObject["jsonEntity"]["Id"].ToString());
                        res = OPBiz.SetCout("Id", Id, "Reports");
                        if (res > 0)
                        {
                            resultMode.Code = 11;
                            resultMode.Data = res.ToString();
                            resultMode.Msg = "统计成功";
                        }
                        else
                        {
                            resultMode.Code = -13;
                            resultMode.Data = "0";
                            resultMode.Msg = "统计失败！";
                        }
                        break;
                }
            }
            catch (Exception ex)
            {
                resultMode.Code = -11;
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