using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.Reflection;
namespace e3net.tools
{
    /// <summary>
    /// xml反射 实体 操作类 大数据，多人操作禁用
    /// </summary>
    public class XMLEntityHelper
    {


        string xml格式 = @" <root>
<Data id='1516165416165'>
<id></id>
<title></title>..........
</Data>
<Data id='15sdsdsd6165'>
<id></id>
<title></title>..........
</Data>................
</root>";
        /// <summary>
        /// xml文件操作
        /// </summary>
        XmlDocument xmlDoc = new XmlDocument();

        /// <summary>
        /// 根节点
        /// </summary>
        XmlNode root = null;
        /// <summary>
        /// 文件路径
        /// </summary>
        string filePath = "";
        public XMLEntityHelper(string path)
        {
            try
            {
                filePath = path;

                xmlDoc.Load(filePath);
                root = xmlDoc.SelectSingleNode("root");
            }
            catch
            {

            }
        }


        /// <summary>
        /// 添加属性
        /// </summary>
        /// <param name="node"></param>
        /// <param name="attributeName"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public XmlAttribute CreateAttribute(XmlNode node, string attributeName, string value)
        {
            try
            {
                XmlDocument doc = node.OwnerDocument;
                XmlAttribute attr = null;
                attr = doc.CreateAttribute(attributeName);
                attr.Value = value;
                node.Attributes.SetNamedItem(attr);
                return attr;
            }
            catch (Exception err)
            {
                string desc = err.Message;
                return null;
            }
        }

        /// <summary>
        /// 赋值 
        /// </summary>
        /// <param name="node">赋值 的节点</param>
        /// <param name="model">数据实体</param>
        /// <returns></returns>
        public XmlNode ModelToXmlNode(XmlNode node, object model)
        {
            PropertyInfo[] PropertyInfos = model.GetType().GetProperties();
            foreach (PropertyInfo property in PropertyInfos)
            {
                if (property.GetValue(model, null) != null)
                    node[property.Name].InnerText = property.GetValue(model, null).ToString();
                else
                    node[property.Name].InnerText = "";
            }
            return node;
        }


        /// <summary>   
        /// 实体添加到xml root节点里  
        /// </summary>   
        /// <param name="model">要转化的Model</param>  
        /// <returns></returns>   
        public int AddToXML(object model)
        {
            int rs = 0;
            try
            {
                XmlNode node = xmlDoc.CreateElement("Data");
                PropertyInfo[] PropertyInfos = model.GetType().GetProperties();
                if (model != null)
                {
                    foreach (PropertyInfo property in PropertyInfos)
                    {
                        //创建各元素
                        XmlElement xel = xmlDoc.CreateElement(property.Name);
                        if (property.GetValue(model, null) != null)
                        {
                            string text = property.GetValue(model, null).ToString(); ;
                            xel.InnerText = text;
                            if (property.Name.ToLower().Equals("id"))//添加个id属性
                            {
                                CreateAttribute(node, "Id", text);
                            }
                        }
                        else
                        {
                            xel.InnerText = "";
                        }
                        node.AppendChild(xel);
                    }
                    root.AppendChild(node);
                    xmlDoc.Save(filePath);
                    rs = 1;
                }
            }
            catch
            {
            }
            return rs;
        }


        /// <summary>   
        /// 实体添加到xml root节点里  
        /// </summary>   
        /// <param name="model">要转化的Model</param>  
        /// <returns></returns>   
        public int AddToXML<T>(List<T> list)
        {
            int rs = 0;
            try
            {
              
                PropertyInfo[] PropertyInfos =typeof(T).GetProperties();
                if (list != null && list.Count > 0)
                {
                    for (int i = 0; i < list.Count; i++)
                    {
                        XmlNode node = xmlDoc.CreateElement("Data");
                        foreach (PropertyInfo property in PropertyInfos)
                        {
                            //创建各元素
                            XmlElement xel = xmlDoc.CreateElement(property.Name);
                            if (property.GetValue(list[i], null) != null)
                            {
                                string text = property.GetValue(list[i], null).ToString(); ;
                                xel.InnerText = text;
                                if (property.Name.ToLower().Equals("id"))//添加个id属性
                                {
                                    CreateAttribute(node, "Id", text);
                                }
                            }
                            else
                            {
                                xel.InnerText = "";
                            }
                            node.AppendChild(xel);
                        }
                        root.AppendChild(node);
                        rs++;
                    }
                 
                    xmlDoc.Save(filePath);
                    
                }
            }
            catch
            {
            }
            return rs;
        }

        /// <summary>   
        /// XML转化为Model的方法   
        /// </summary>   
        /// <param name="xml">要转化的XML</param>  
        /// <param name="SampleModel">Model的实体示例，New一个出来即可</param>  
        /// <returns></returns>   
        public static T XMLToModel<T>(XmlNode node) where T : new()
        {
            T SampleModel = new T();
            PropertyInfo[] PropertyInfos = SampleModel.GetType().GetProperties();
            foreach (PropertyInfo property in PropertyInfos)
            {
                if (node[property.Name] != null)
                {
                    if (property.PropertyType == typeof(System.Guid))
                        property.SetValue(SampleModel, new Guid(node[property.Name].InnerText), null);
                    else
                        property.SetValue(SampleModel, Convert.ChangeType(node[property.Name].InnerText, property.PropertyType), null);
                }
                else
                    property.SetValue(SampleModel, null, null);
            }
            return SampleModel;

        }
        /// <summary>   
        /// XML转化为Model的方法   
        /// </summary>   
        /// <param name="xml">要转化的XML</param>  
        /// <param name="SampleModel">Model的实体示例，New一个出来即可</param>  
        /// <returns></returns>   
        public static List<T> XMLToList<T>(XmlNodeList nodeList) where T : new()
        {
            List<T> list = new List<T>();

            PropertyInfo[] PropertyInfos = typeof(T).GetProperties();
            for (int i = nodeList.Count - 1; i >= 0; i--)
            {
                XmlNode node = nodeList[i];
                T SampleModel = new T();
                foreach (PropertyInfo property in PropertyInfos)
                {
                    if (node[property.Name] != null)
                    {
                        if (property.PropertyType == typeof(System.Guid))
                            property.SetValue(SampleModel, new Guid(node[property.Name].InnerText), null);
                        else
                            property.SetValue(SampleModel, Convert.ChangeType(node[property.Name].InnerText, property.PropertyType), null);
                    }
                    else
                        property.SetValue(SampleModel, null, null);
                }
                list.Add(SampleModel);
            }
            return list;

        }
        /// <summary>   
        /// XML转化为Model的方法   
        /// </summary>   
        /// <param name="xml">要转化的XML</param>  
        /// <param name="SampleModel">Model的实体示例，New一个出来即可</param>  
        /// <returns></returns>   
        public List<T> XMLToList<T>() where T : new()
        {
            XmlNodeList nodeList = root.ChildNodes;
            List<T> list = XMLToList<T>(nodeList);
            return list;

        }
        /// <summary>
        /// 根据某个节点固定值获取 第一项
        /// </summary>
        /// <returns></returns>
        public T GetItemByValue<T>(string PropertyName, string value) where T : new()
        {
            T item = default(T);
            try
            {
                XmlNodeList nodeList = root.ChildNodes;

                foreach (XmlNode node in nodeList)
                {
                    if (node[PropertyName].InnerText.Trim().Equals(value.Trim()))
                    {
                        item = XMLToModel<T>(node);
                        break;
                    }
                }
            }
            catch
            { }
            return item;
        }
        /// <summary>
        /// 根据某个节点固定值获取列表
        /// </summary>
        /// <returns></returns>
        public List<T> GetListByValue<T>(string PropertyName, string value) where T : new()
        {
            List<T> list = new List<T>();
            try
            {
                XmlNodeList nodeList = root.ChildNodes;

                foreach (XmlNode node in nodeList)
                {
                    if (node[PropertyName].InnerText.Trim().Equals(value.Trim()))
                    {
                        T item = XMLToModel<T>(node);
                        list.Add(item);
                    }
                }
            }
            catch
            { }
            return list;
        }
        /// <summary>
        /// 根据标志的Id获取
        /// </summary>
        /// <returns></returns>
        public T GetItemById<T>(string Id) where T : new()
        {
            T item = default(T);
            try
            {
                XmlNodeList nodeList = root.ChildNodes;

                foreach (XmlNode node in nodeList)
                {
                    if (node.Attributes["Id"].Value.Equals(Id))
                    {
                        item = XMLToModel<T>(node);
                        break;
                    }
                }
            }
            catch
            { }
            return item;
        }
        /// <summary>
        /// 根据属性删除
        /// </summary>
        /// <returns></returns>
        public int DelByProperty(string PropertyName, string value)
        {
            int rs = 0;
            try
            {
                XmlNodeList nodeList = root.ChildNodes;

            for  (int i = nodeList.Count-1; i >=0; i--)
                {
                    if (nodeList[i][PropertyName].InnerText.Trim().Equals(value.Trim()))
                    {
                        //移除节点
                        root.RemoveChild(nodeList[i]);
                        //保存
                    }
                }
                xmlDoc.Save(filePath);
                rs = 1;
            }
            catch
            {

            }
            return rs;
        }
        /// <summary>
        /// 根据Id
        /// </summary>
        /// <returns></returns>
        public int DelById(string Id)
        {
            int rs = 0;
            try
            {
                XmlNodeList nodeList = root.ChildNodes;

                foreach (XmlNode node in nodeList)
                {
                    if (node.Attributes["Id"].Value.Equals(Id))
                    {
                        //移除节点
                        root.RemoveChild(node);
                        //保存
                        xmlDoc.Save(filePath);
                        rs = 1;
                        break;
                    }
                }
            }
            catch
            {

            }
            return rs;
        }
        /// <summary>
        /// 根据Id更新
        /// </summary>
        /// <returns></returns>
        public int UpdateById(string Id, object mode)
        {
            int rs = 0;
            try
            {
                XmlNodeList nodeList = root.ChildNodes;

                foreach (XmlNode node in nodeList)
                {
                    if (node.Attributes["Id"].Value.Equals(Id))
                    {
                        ModelToXmlNode(node, mode);
                        //保存
                        xmlDoc.Save(filePath);
                        rs = 1;
                        break;
                    }
                }
            }
            catch
            {

            }
            return rs;
        }
        /// <summary>
        /// 释放
        /// </summary>
        public void dispose()
        {
            xmlDoc.RemoveAll();
            xmlDoc = null;
            GC.Collect();
        }
    }

}
