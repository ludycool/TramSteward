using e3net.Mode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace e3net.BLL
{
    public class ParameterXmlHelper
    {
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
        string filePath = @"/ParameterData.xml";

        public ParameterXmlHelper(string path)
        {
            try
            {
                filePath = path + filePath;

                xmlDoc.Load(filePath);
                root = xmlDoc.SelectSingleNode("root");
            }
            catch
            {

            }
        }
        /// <summary>
        /// 添加一条信息
        /// </summary>
        /// <param name="item"></param>
        /// <returns>1添加成功  否则添加失败</returns>
        public int Add(Parameter item)
        {
            int rs = 0;

            if (xmlDoc != null && root != null)
            {
                try
                {
                    //创建一个节点
                    XmlNode node = xmlDoc.CreateElement("Data");

                    XmlElement Id = xmlDoc.CreateElement("Id");
                    Id.InnerText = item.Id.ToString();
                    node.AppendChild(Id);
                    //创建各元素
                    XmlElement keys = xmlDoc.CreateElement("keys");
                    keys.InnerText = item.keys.ToString();
                    node.AppendChild(keys);

                    XmlElement Value = xmlDoc.CreateElement("Value");
                    Value.InnerText = item.Value;
                    node.AppendChild(Value);

                   
                    //将节点添加到根节点
                    root.AppendChild(node);

                    //保存文件
                    xmlDoc.Save(filePath);
                    rs = 1;
                }
                catch
                {
                    rs = -1;
                }
            }

            return rs;
        }

        /// <summary>
        /// 获取一条记录
        /// </summary>
        /// <returns></returns>
        public Parameter GetItemBykeys(string keys)
        {
            Parameter item = null;
            try
            {
                if (xmlDoc != null && root != null)
                {
                    XmlNodeList nodeList = xmlDoc.SelectSingleNode("root").ChildNodes;

                    foreach (XmlNode node in nodeList)
                    {
                        if (string.IsNullOrEmpty(keys))
                        {
                            item = new Parameter();
                            item.keys = node["keys"].InnerText;
                            item.Value = node["Value"].InnerText;
                           
                            break;

                        }
                        else if (node["Id"].InnerText == keys)
                        {
                            item = new Parameter();
                            item.Id = Guid.Parse(node["Id"].InnerText);
                            item.keys =node["keys"].InnerText;
                            item.Value = node["Value"].InnerText;
                          
                            break;
                      
                        }
                    }
                }
            }
            catch
            { }

            return item;
        }

        /// <summary>
        /// 更新
        /// </summary>
        /// <param name="item"></param>
        public int Update(Parameter item)
        {
            int rs = 0;
            if (xmlDoc != null && root != null)
            {
                try
                {
                    XmlNodeList nodeList = xmlDoc.SelectSingleNode("root").ChildNodes;

                    for (int i = nodeList.Count - 1; i >= 0; i--)
                    {
                        XmlNode node = nodeList[i];
                        if (node["Id"].InnerText == item.Id.ToString().Trim())
                        {
                            node["keys"].InnerText = item.keys;
                            node["Value"].InnerText = item.Value;
                            //保存文件
                            xmlDoc.Save(filePath);
                            rs = 1;
                            break;
                        }
                    }
                }
                catch
                {
                    rs = -1;
                }
            }

            return rs;
        }

        /// <summary>
        /// 获取所有友情链接
        /// </summary>
        /// <returns></returns>
        public List<Parameter> GetAll()
        {
            List<Parameter> list = new List<Parameter>();
           
            if (xmlDoc != null && root != null)
            {
                XmlNodeList nodeList = xmlDoc.SelectSingleNode("root").ChildNodes;

                // 遍历根节点下所有子节点
                foreach (XmlNode node in nodeList)
                {
                    //根据标题查
                    Parameter item = new Parameter();
                    item.Id = Guid.Parse(node["Id"].InnerText);
                    item.keys = node["keys"].InnerText;
                    item.Value = node["Value"].InnerText;
                    if (item != null)
                    {
                        list.Add(item);
                    }
                }
            }

            return list;
        }

        /// <summary>
        /// 根据标题删除
        /// </summary>
        /// <param name="title"></param>
        /// <returns></returns>
        public int DelBykeys(string keys)
        {
            int rs = 0;
            try
            {
                XmlNodeList nodeList = xmlDoc.SelectSingleNode("root").ChildNodes;

                for (int i = nodeList.Count - 1; i >= 0; i--)
                {
                    XmlNode node = nodeList[i];
                    if (node["Id"].InnerText == keys.Trim())
                    {
                        //移除节点
                        root.RemoveChild(node);
                        rs = 1;

                        //保存
                        xmlDoc.Save(filePath);
                        break;
                    }
                }
            }
            catch
            {
                rs = -1;
            }

            return rs;
        }

    }

}
