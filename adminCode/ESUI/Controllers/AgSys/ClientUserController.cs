using e3net.BLL.RMS;
using e3net.common.SysMode;
using e3net.IDAL;
using e3net.Mode;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using e3net.tools;
using Microsoft.Practices.Unity;
using Newtonsoft.Json;
using e3net.BLL;
using e3net.BLL.AgSys;
using e3net.Mode.AgSys;

namespace ESUI.Controllers
{
    //[Export]
    public class ClientUserController : BaseController
    {

        //[Import(typeof(IClientUserDao))]
     //   public IClientUserDao OPBiz { get; set; }
       // public ClientUserBiz OPBiz = new ClientUserBiz();
        [Dependency]
        public ClientUserBiz OPBiz { get; set; }
        public ActionResult Index()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }

        [HttpPost]
        public JsonResult Search()
        {
           // SelectWhere.selectwherestring(Request["sqlSet"]);
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
             //string Where = Request["sqlSet"] == null ? "1=1" : SelectWhere.selectwherestring(Request["sqlSet"]);
           string Where = Request["sqlSet"] == null ? "1=1" : GetSql(Request["sqlSet"]);
            ////字段排序
            //String sortField = Request["sortField"];
            //String sortOrder = Request["sortOrder"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "ClientUser";
            pc.sys_Where =  Where;
            pc.sys_Order = "Id";
            List<ClientUser> list2 = OPBiz.GetPagingData(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = ClientUserSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
         string d=   JsonConvert.SerializeObject(dic);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(ClientUser ClientUserModle)
        {
          
            bool IsAdd = false;
            if (!(ClientUserModle.Id != null && !ClientUserModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                ClientUserModle.Id = Guid.NewGuid();
                ClientUserModle.AddTime = DateTime.Now;
                ClientUserModle.UpdateTime = DateTime.Now;
                ClientUserModle.LocationUpdateTime = DateTime.Now;
                ClientUserModle.Category = "";
                OPBiz.Add(ClientUserModle);
                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {

                ClientUserModle.WhereExpression = ClientUserSet.Id.Equal(ClientUserModle.Id);
                //  spmodel.GroupId = GroupId;
                if (OPBiz.Update(ClientUserModle) > 0)
                {
                    return Json("ok", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json("Nok", JsonRequestBehavior.AllowGet);
                }
            }



        }
        public JsonResult GetInfo(string ID)
        {
            var mql2 = ClientUserSet.SelectAll().Where(ClientUserSet.Id.Equal(ID));
            ClientUser Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }


        public JsonResult Del(string IDSet)
        {

            var mql2 = ClientUserSet.Id.In(IDSet.Split(','));
            int f = OPBiz.Remove<ClientUserSet>(mql2);
            return Json("OK", JsonRequestBehavior.AllowGet);

        }

        public JsonResult seachcont( )
        {
        //    FieldList.add(new Field('Table1.No', '表1.编号', 'number', '10', '', ''));
        //FieldList.add(new Field('Table2.Name', '表2.名称', 'varchar', '100', '', ''));
        //FieldList.add(new Field('Date_Type', '日期', 'date', '19', '', ''));
        //FieldList.add(new Field('DateTime_Type', '日期时间', 'datetime', '19', '', ''));
        //FieldList.add(new Field('Remark', '备注', 'varchar', '500', '', ''));
            QueryControlEntity modle=new QueryControlEntity();
            List<QueryControlEntity> ff=new List<QueryControlEntity>();
            modle.Name = "Table1.No";
            modle.Alias = "表1.编号";
            modle.Type = "varchar";
            modle.Length = "100";
            ff.Add(modle);
            return Json(ff, JsonRequestBehavior.AllowGet);

        }

    }
}
