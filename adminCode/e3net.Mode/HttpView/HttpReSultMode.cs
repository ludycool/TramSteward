using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.Mode.HttpView
{
    /// <summary>
    /// 接口返回值实体类
    /// </summary>
  public  class HttpReSultMode
    {

      /// <summary>
        /// 代码Code 成功11 系统出错-11 成常操作0  失败-13
      /// </summary>
      public int Code { set; get; }
      /// <summary>
      /// 提示信息
      /// </summary>
      public string Msg { set; get; }
      /// <summary>
      /// 数据
      /// </summary>
      public string Data { set; get; }
    }
}
