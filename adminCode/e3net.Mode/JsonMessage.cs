using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.Mode
{
  public  class JsonMessage
    {
      /// <summary>
      /// 是否成功
      /// </summary>
      public bool Success { get; set; }
      /// <summary>
      /// 数据
      /// </summary>
      public string Data { get; set; }
      /// <summary>
      /// 提示信息
      /// </summary>
      public string Message { get; set; }

    }
}
