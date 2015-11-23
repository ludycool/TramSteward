using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.common.SysMode
{
    public class Spacetree
    {
        public Guid id { get; set; }
        public string name { get; set; }
        public string datas { get; set; }
        public string icon { get; set; }
        public List<Spacetree> children { get; set; }
    }
}
