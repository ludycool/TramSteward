using e3net.Mode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace e3net.BLL.YhSys
{
    public class Sys_AdvertisingXmlHelper
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
        string filePath = @"/Sys_AdvertisingData.xml";

        public Sys_AdvertisingXmlHelper(string path)
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
        public int Add(Sys_Advertising item)
        {
            int rs = 0;

            if (xmlDoc != null && root != null)
            {
                try
                {
                    //创建一个节点
                    XmlNode node = xmlDoc.CreateElement("Data");

                    //创建各元素
                    XmlElement Id = xmlDoc.CreateElement("Id");
                    Id.InnerText = item.Id.ToString();
                    node.AppendChild(Id);
                    XmlElement ImageUrl = xmlDoc.CreateElement("ImageUrl");
                    ImageUrl.InnerText = item.ImageUrl;
                    node.AppendChild(ImageUrl);

                    XmlElement Category = xmlDoc.CreateElement("Category");
                    Category.InnerText = item.Category;
                    node.AppendChild(Category);

                    XmlElement Title = xmlDoc.CreateElement("Title");
                    Title.InnerText = item.Title;
                    node.AppendChild(Title);

                    XmlElement Details = xmlDoc.CreateElement("Details");
                    Details.InnerText = item.Details;
                    node.AppendChild(Details);

                    XmlElement Url = xmlDoc.CreateElement("Url");
                    Url.InnerText = item.Url;
                    node.AppendChild(Url);

                    XmlElement AddTime = xmlDoc.CreateElement("AddTime");
                    AddTime.InnerText = item.AddTime.ToString();
                    node.AppendChild(AddTime);


                    XmlElement UpdateTime = xmlDoc.CreateElement("UpdateTime");
                    UpdateTime.InnerText = item.UpdateTime.ToString();
                    node.AppendChild(UpdateTime);

                    XmlElement States = xmlDoc.CreateElement("States");
                    States.InnerText = item.States.ToString();
                    node.AppendChild(States);

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
        public Sys_Advertising GetItemById(string Id)
        {
            Sys_Advertising item = null;
            try
            {
                if (xmlDoc != null && root != null)
                {
                    XmlNodeList nodeList = xmlDoc.SelectSingleNode("root").ChildNodes;

                    foreach (XmlNode node in nodeList)
                    {
                        if (string.IsNullOrEmpty(Id))
                        {
                            item = new Sys_Advertising();
                            item.Id = int.Parse(node["Id"].InnerText);
                            item.ImageUrl = node["ImageUrl"].InnerText;
                            item.Title = node["Title"].InnerText;
                            item.Category = node["Category"].InnerText;
                            if (node["UpdateTime"].InnerText != "")
                                item.UpdateTime = Convert.ToDateTime(node["UpdateTime"].InnerText);
                            else item.UpdateTime = DateTime.Now;
                            if (node["AddTime"].InnerText != "")
                                item.AddTime = Convert.ToDateTime(node["AddTime"].InnerText);
                            else item.AddTime = DateTime.Now;
                            item.Details = node["Details"].InnerText;
                            item.Url = node["Url"].InnerText;
                            if (node["States"].InnerText != "")
                                item.States = Convert.ToInt32(node["States"].InnerText);
                            break;

                        }
                        else if (node["Id"].InnerText == Id)
                        {
                            item = new Sys_Advertising();
                            item.Id = int.Parse(node["Id"].InnerText);
                            item.ImageUrl = node["ImageUrl"].InnerText;
                            item.Title = node["Title"].InnerText;
                            item.Category = node["Category"].InnerText;
                            if (node["UpdateTime"].InnerText != "")
                                item.UpdateTime = Convert.ToDateTime(node["UpdateTime"].InnerText);
                            else item.UpdateTime = DateTime.Now;
                            if (node["AddTime"].InnerText != "")
                                item.AddTime = Convert.ToDateTime(node["AddTime"].InnerText);
                            else item.AddTime = DateTime.Now;
                            item.Details = node["Details"].InnerText;
                            item.Url = node["Url"].InnerText;
                            if (node["States"].InnerText != "")
                                item.States = Convert.ToInt32(node["States"].InnerText);
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
        public int Update(Sys_Advertising item)
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
                            node["ImageUrl"].InnerText = item.ImageUrl;
                            node["Title"].InnerText = item.Title;
                            node["Category"].InnerText = item.Category;
                            node["UpdateTime"].InnerText = item.UpdateTime.ToString();
                            node["Details"].InnerText = item.Details;
                            node["Url"].InnerText = item.Url;
                            node["States"].InnerText = item.States.ToString();
                            node["UpdateTime"].InnerText = item.UpdateTime.ToString();
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
        public List<Sys_Advertising> GetAll()
        {
            List<Sys_Advertising> list = new List<Sys_Advertising>();

            if (xmlDoc != null && root != null)
            {
                XmlNodeList nodeList = xmlDoc.SelectSingleNode("root").ChildNodes;

                // 遍历根节点下所有子节点
                foreach (XmlNode node in nodeList)
                {
                    Sys_Advertising item = new Sys_Advertising();
                    item.Id = int.Parse(node["Id"].InnerText);
                    item.ImageUrl = node["ImageUrl"].InnerText;
                    item.Title = node["Title"].InnerText;
                    item.Category = node["Category"].InnerText;
                    if (node["UpdateTime"].InnerText != "")
                        item.UpdateTime = Convert.ToDateTime(node["UpdateTime"].InnerText);
                    else item.UpdateTime = DateTime.Now;
                    if (node["AddTime"].InnerText != "")
                        item.AddTime = Convert.ToDateTime(node["AddTime"].InnerText);
                    else item.AddTime = DateTime.Now;
                    item.Details = node["Details"].InnerText;
                    item.Url = node["Url"].InnerText;
                    if (node["States"].InnerText != "")
                        item.States = Convert.ToInt32(node["States"].InnerText);
                    list.Add(item);
                }
            }

            return list;
        }
        /// <summary>
        /// 根据分类获取
        /// </summary>
        /// <returns></returns>
        public List<Sys_Advertising> GetByCategory(string Category)
        {
            List<Sys_Advertising> list = new List<Sys_Advertising>();

            if (xmlDoc != null && root != null)
            {
                XmlNodeList nodeList = xmlDoc.SelectSingleNode("root").ChildNodes;

                // 遍历根节点下所有子节点
                foreach (XmlNode node in nodeList)
                {
                    if (node["Category"].InnerText == Category)
                    {
                        Sys_Advertising item = new Sys_Advertising();
                        item.Id = int.Parse(node["Id"].InnerText);
                        item.ImageUrl = node["ImageUrl"].InnerText;
                        item.Title = node["Title"].InnerText;
                        item.Category = node["Category"].InnerText;
                        if (node["UpdateTime"].InnerText != "")
                            item.UpdateTime = Convert.ToDateTime(node["UpdateTime"].InnerText);
                        else item.UpdateTime = DateTime.Now;
                        if (node["AddTime"].InnerText != "")
                            item.AddTime = Convert.ToDateTime(node["AddTime"].InnerText);
                        else item.AddTime = DateTime.Now;
                        item.Details = node["Details"].InnerText;
                        item.Url = node["Url"].InnerText;
                        if (node["States"].InnerText != "")
                            item.States = Convert.ToInt32(node["States"].InnerText);
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
        public int DelById(string Id)
        {
            int rs = 0;
            try
            {
                XmlNodeList nodeList = xmlDoc.SelectSingleNode("root").ChildNodes;

                for (int i = nodeList.Count - 1; i >= 0; i--)
                {
                    XmlNode node = nodeList[i];
                    if (node["Id"].InnerText == Id.Trim())
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
