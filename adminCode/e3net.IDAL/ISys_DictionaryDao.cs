using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using e3net.Mode;

namespace e3net.IDAL
{
    public interface ISys_DictionaryDao : IBaseDao<Sys_Dictionary>
    {
        string GetTree(List<Sys_Dictionary> list);

    }
}
