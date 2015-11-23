using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.Mode
{
    /// <summary>
    /// xml存参数
    /// </summary>
   public class Parameter
    {

       public Guid Id { get; set; }
        /// <summary>
        /// 键
        /// </summary>
        public String keys
        {
            get;
            set;
        }



        /// <summary>
        ///值
        /// </summary>
        public String Value
        {
            get;
            set;
        }

    }
}
