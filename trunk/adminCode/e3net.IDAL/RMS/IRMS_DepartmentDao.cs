
using e3net.Mode.RMS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.IDAL.RMS
{
    public interface IRMS_DepartmentDao : IBaseDao<RMS_Department>
    {
        string GetTree(List<RMS_Department> list);
    }
}
