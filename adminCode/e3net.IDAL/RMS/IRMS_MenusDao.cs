
using e3net.common.SysMode;
using e3net.Mode.RMS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.IDAL.RMS
{
    public interface IRMS_MenusDao : IBaseDao<RMS_Menus>
    {


        /// <summary>
        /// 转化数型菜单
        /// </summary>
        /// <param name="mql"></param>
        /// <returns></returns>
        List<TreeMenus> GetTreeManus(List<RMS_Menus> list);
    }
}
