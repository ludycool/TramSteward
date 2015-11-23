using e3net.BLL.RMS;
using e3net.common;
using e3net.common.SysMode;
using e3net.IDAL.RMS;
using e3net.Mode.RMS;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Practices.Unity;

namespace ESUI.Controllers
{
    //[Export]
    public class ManuController : BaseController
    {
        //
        // GET: /Manus/

        //[Import(typeof(IRMS_MenusDao))]
    //    public IRMS_MenusDao MDBiz { get; set; }

        [Dependency]
        public RMS_MenusBiz MDBiz { get; set; }
        //public RMS_MenusBiz MDBiz = new RMS_MenusBiz();
        //[Import(typeof(IRMS_ButtonsDao))]
     //   public IRMS_ButtonsDao BDBiz { get; set; }
        [Dependency]
        public RMS_ButtonsBiz BDBiz { get; set; }
        //public RMS_ButtonsBiz BDBiz = new RMS_ButtonsBiz();
        //[Import(typeof(IRMS_MenuButtonsDao))]
      //  public IRMS_MenuButtonsDao MBDBiz { get; set; }
        [Dependency]
        public RMS_MenuButtonsBiz MBDBiz { get; set; }
      //  public RMS_MenuButtonsBiz MBDBiz = new RMS_MenuButtonsBiz();
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]


        public JsonResult EditInfo(RMS_Menus Mode)
        {
            Random rnd = new Random();
            bool IsAdd = false;
            if (!(Mode.Id != null && !Mode.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                Mode.Id = Guid.NewGuid();
                Mode.CreateTime = DateTime.Now;
                Mode.ModifyTime = DateTime.Now;
                Mode.IsEnable = true;
                Mode.IsShow = true;
                MDBiz.Add(Mode);

                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {
                Mode.WhereExpression = RMS_MenusSet.Id.Equal(Mode.Id);
                //  spmodel.GroupId = GroupId;
                Mode.CreateTime = DateTime.Now;
                Mode.ModifyTime = DateTime.Now;
                if (MDBiz.Update(Mode) > 0)
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
            var mql2 = RMS_MenusSet.SelectAll().Where(RMS_MenusSet.Id.Equal(ID));
            RMS_Menus Rmodel = MDBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetOneOut(string ManuId)//获取菜单未添加的按钮
        {
            //DataSet ds = OPBiz.ExecuteSqlToDataSet(" select * from RMS_Buttons where Id not in( select Id from Function_Buttons where Id='" + ManuId + "')");
            //return Json(ds.Tables[0], JsonRequestBehavior.AllowGet);
            var mql = RMS_ButtonsSet.SelectAll().Where(RMS_ButtonsSet.Id.NotIn(RMS_MenuButtonsSet.Select(RMS_MenuButtonsSet.ButtonId).Where(RMS_MenuButtonsSet.ManuId.Equal(ManuId))));
            List<RMS_Buttons> Rmodel = BDBiz.GetOwnList<RMS_Buttons>(mql);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetOneIn(string ManuId)//获取菜单已经添加的按钮
        {
            var mql = V_MenuButtonsSet.SelectAll().Where(V_MenuButtonsSet.ManuId.Equal(ManuId)).OrderByASC(V_MenuButtonsSet.OrderNo);
          //  var mql = RMS_ButtonsSet.SelectAll().Where(RMS_ButtonsSet.Id.In(RMS_MenuButtonsSet.Select(RMS_MenuButtonsSet.ButtonId).Where(RMS_MenuButtonsSet.ManuId.Equal(ManuId))));
          //  List<RMS_Buttons> Rmodel = BDBiz.GetOwnList<RMS_Buttons>(mql);
            List<V_MenuButtons> Rmodel = BDBiz.GetOwnList<V_MenuButtons>(mql);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetJson()
        {
          
            var sql = RMS_MenusSet.SelectAll();
            List<RMS_Menus> listAll = MDBiz.GetOwnList<RMS_Menus>(sql);
            List<TreeMenus> listTree = MDBiz.GetTreeManus(listAll);
            return Json(listTree);
        }
        public JsonResult DeleteInfo(string ID)
        {

            var mql2 = RMS_MenusSet.Id.Equal(ID);
            int f = MDBiz.Remove<RMS_MenusSet>(mql2);
            return Json("OK", JsonRequestBehavior.AllowGet);

        }
        /// <summary>
        /// //添加单按钮
        /// </summary>
        /// <param name="btnId"></param>
        /// <param name="ManuId"></param>
        /// <returns></returns>
        public JsonResult AddManuBtn(string BtnId, string ManuId, string OrderNo)
        {
            var mql2 =RMS_MenuButtonsSet.SelectAll().Where( RMS_MenuButtonsSet.ButtonId.Equal(BtnId).And(RMS_MenuButtonsSet.ManuId.Equal(ManuId)));
            RMS_MenuButtons item = MBDBiz.GetEntity(mql2);
            if (item != null)
            {
                item.OrderNo = int.Parse(OrderNo);
                item.WhereExpression = RMS_MenuButtonsSet.Id.Equal(item.Id);
                //  spmodel.GroupId = GroupId;
                if (MBDBiz.Update(item) > 0)
                {
                    return Json("OK", JsonRequestBehavior.AllowGet);
                }
            }
            item = new RMS_MenuButtons();
            item.Id = Guid.NewGuid() ;
            item.ButtonId = Guid.Parse(BtnId);
            item.ManuId = Guid.Parse(ManuId);
            item.OrderNo = int.Parse(OrderNo);
            MBDBiz.Add(item);
            return Json("OK", JsonRequestBehavior.AllowGet);

        }
        /// <summary>
        /// //删菜单按钮
        /// </summary>
        /// <param name="btnId"></param>
        /// <param name="ManuId"></param>
        /// <returns></returns>
        public JsonResult DelManuBtn(string IdSet, string ManuId)
        {
            string[] ids=IdSet.Split(',');
            var mql2 = RMS_MenuButtonsSet.ButtonId.In(ids).And(RMS_MenuButtonsSet.ManuId.Equal(ManuId));
            int f = MBDBiz.Remove<RMS_MenuButtonsSet>(mql2);
            return Json("OK", JsonRequestBehavior.AllowGet);
        }
    }
}
