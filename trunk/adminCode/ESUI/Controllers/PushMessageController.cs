using e3net.BLL.RMS;
using e3net.common.SysMode;
using e3net.IDAL.RMS;
using e3net.Mode.RMS;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Practices.Unity;
using e3net.Mode.YhSys;
using e3net.BLL.YhSys;
using e3net.BLL;
using e3net.Mode;
using cn.jpush.api;
using e3net.Mode.HttpView;
using TZHSWEET.Common;

namespace ESUI.Controllers
{
    //  [Export]
    public class PushMessageController : BaseController
    {
        //
        // GET: /User/
        // [Import(typeof(IPushMessageDao))]
        //  public IPushMessageDao OPBiz { get; set; }
        //  public PushMessageBiz OPBiz = new PushMessageBiz();
        /// <summary>
        /// 业务层注入
        /// </summary>
        [Dependency]
        public PushMessageBiz OPBiz { get; set; }

        public ActionResult Index()
        {

            ViewBag.Message = "消息推送";
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }

        [HttpPost]
        public JsonResult GetList()
        {

            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
            ////字段排序
            //String sortField = Request["sortField"];
            //String sortOrder = Request["sortOrder"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "PushMessage";
            pc.sys_Where = "1=1";
            //if (!UserData.UserInfo.RoleId.ToString().Equals("fb38f312-0078-4f44-9cda-1183c8042db8"))//不是系统管理员，限制一个医院
            //{
            //    pc.sys_Where += " and YH_HospitalId='" + UserData.UserInfo.YH_HospitalId + "'";
            //}


            pc.sys_Order = " AddTime Desc";


            List<PushMessage> list2 = OPBiz.GetPagingData<PushMessage>(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = PushMessageSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);

            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult pushTags(PushMessage PushMessageModle)
        {
            HttpReSultMode result = new HttpReSultMode();
            try
            {
                PushMessageModle.Id = Guid.NewGuid();
                PushMessageModle.AddTime = DateTime.Now;
                PushMessageModle.UpdateTime = DateTime.Now;
                //rol.RoleDescription = PushMessageModle.RoleDescription;
                //rol.RoleOrder = PushMessageModle.RoleOrder;

                OPBiz.Add(PushMessageModle);
                JpushHelp jh = new JpushHelp();
                string[] tags = { PushMessageModle.Tags };
                jh.SendTagMsg(PushMessageModle.Title, PushMessageModle.Contents, tags);
                result.Code = 11;
                result.Data = "ok";
                result.Msg = "发送成功";



            }
            catch (Exception e)
            {
                result.Code = -11;
                result.Data = "Nok";
                result.Msg = "发送失败" + e.ToString();

            }
            return Json(JsonHelper.ToJson(result, true), JsonRequestBehavior.AllowGet);
        }
        public JsonResult pushAlias(PushMessage PushMessageModle)
        {
            HttpReSultMode result = new HttpReSultMode();
            try
            {
                PushMessageModle.Id = Guid.NewGuid();
                PushMessageModle.AddTime = DateTime.Now;
                PushMessageModle.UpdateTime = DateTime.Now;
                //rol.RoleDescription = PushMessageModle.RoleDescription;
                //rol.RoleOrder = PushMessageModle.RoleOrder;

                OPBiz.Add(PushMessageModle);
                JpushHelp jh = new JpushHelp();
                string[] Alias = { PushMessageModle.Alias };
                jh.SendAliaMsg(PushMessageModle.Title, PushMessageModle.Contents, Alias);
                result.Code = 11;
                result.Data = "ok";
                result.Msg = "发送成功";
            }
            catch (Exception e)
            {
                result.Code = -11;
                result.Data = "Nok";
                result.Msg = "发送失败" + e.ToString();

            }
            return Json(JsonHelper.ToJson(result, true), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetInfo(string ID)
        {
            var mql2 = PushMessageSet.SelectAll().Where(PushMessageSet.Id.Equal(ID));
            PushMessage Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }


        public JsonResult Del(string IDSet)
        {

            var mql2 = PushMessageSet.Id.Equal(IDSet);
            int f = OPBiz.Remove<PushMessageSet>(mql2);
            return Json("OK", JsonRequestBehavior.AllowGet);

        }



    }
}
