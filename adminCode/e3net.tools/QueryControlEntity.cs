using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.tools
{
   public class QueryControlEntity
    {
       private string name; // 字段名
       private string   alias; // 别名
       private string   type; // 类型
       private string   length; // 长度
       private string   dictCode; // 业务字典代码
	//this.event = event; // 事件(主要用于选择外键表数据)
       public string Name
       {
           get { return name; }
           set { name = value; }
       }

       public string DictCode
       {
           get { return dictCode; }
           set { dictCode = value; }
       }

       public string Length
       {
           get { return length; }
           set { length = value; }
       }

       public string Type
       {
           get { return type; }
           set { type = value; }
       }

       public string Alias
       {
           get { return alias; }
           set { alias = value; }
       }
    }
}
