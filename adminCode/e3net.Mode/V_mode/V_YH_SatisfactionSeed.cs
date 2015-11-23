using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.Mode.V_mode
{
  public  class V_YH_SatisfactionSeed
    {
        /// <summary>
        /// Id
        /// </summary>
        public Guid Id
        {
            get;
            set;
        }
      /// <summary>
        /// 满意度种子Id
      /// </summary>
      public string SatisfactionSeedId { set; get; }
      /// <summary>
      /// 满意度种子的项Id
      /// </summary>
      public string SatisfactionItemId { set; get; }
      /// <summary>
      /// 排序
      /// </summary>
      public int OrderNo
      {
          get;
          set;
      }
      /// <summary>
      /// 名称
      /// </summary>
      public String CName
      {
          get;
          set;
      }
      /// <summary>
      /// 值
      /// </summary>
      public String ValueName
      {
          get;
          set;
      }

    }
}
