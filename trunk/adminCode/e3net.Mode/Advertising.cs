using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.Mode
{
    public class Advertising
    {
        /// <summary>
        /// 主键
        /// </summary>
        public Guid Id
        {
            get;
            set;
        }
        /// <summary>
        ///连接地址
        /// </summary>
        public string Website { set; get; }
        /// <summary>
        /// 图片地址
        /// </summary>
        public String ImgeUrl
        {
            get;
            set;
        }
        /// <summary>
        /// 分类
        /// </summary>
        public string Category
        {
            get;
            set;
        }
        /// <summary>
        /// 名称
        /// </summary>
        public String Title
        {
            get;
            set;
        }



        /// <summary>
        ///详情
        /// </summary>
        public String Details
        {
            get;
            set;
        }


        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime? AddTime
        {
            get;
            set;
        }

        /// <summary>
        /// 更新时间
        /// </summary>
        public DateTime? UpdateTime
        {
            get;
            set;
        }

        /// <summary>
        /// 状态1启用2禁用
        /// </summary>
        public Int32? States
        {
            get;
            set;
        }

    }
}
