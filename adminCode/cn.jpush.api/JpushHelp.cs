using cn.jpush.api.common;
using cn.jpush.api.common.resp;
using cn.jpush.api.push;
using cn.jpush.api.push.mode;
using e3net.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cn.jpush.api
{

    /// <summary>
    /// 极光推送
    /// </summary>
    public class JpushHelp
    {

        public static String app_key = ConfigurationManager.AppSettings["app_key"].ToString();
        public static String master_secret = ConfigurationManager.AppSettings["master_secret"].ToString();

        /// <summary>
        /// 发送别名消息
        /// </summary>
        /// <param name="title">标题</param>
        /// <param name="Content">内容</param>
        /// <param name="alias">客户的别名组</param>
        /// <returns></returns>
        public MessageResult SendAliaMsg(string title, string Content, string[] alias)
        {
            MessageResult result = new MessageResult();
            try
            {
                JPushClient client = new JPushClient(app_key, master_secret);
                string MSG_CONTENT = Content;

                PushPayload payload = new PushPayload();
                Notification not = new Notification();
                not.setAlert(title);
                payload.notification = not;
                payload.platform = Platform.all();
                payload.audience = Audience.s_alias(alias);
                payload.message = Message.content(title)
                                          .AddExtras("Content", Content)
                                          .AddExtras("Title", title)
                                          .AddExtras("key2", false);
                result = client.SendPush(payload);

            }
            catch (APIRequestException e)
            {
                SystemLogsBiz.logv("推送失败APIRequestException", e.ErrorMessage, "类 JpushHelp");
            }
            catch (APIConnectionException e)
            {
                SystemLogsBiz.logv("推送失败APIConnectionException", e.Message, "类 JpushHelp");
            }
            return result;
        }

        /// <summary>
        /// 发送别名消息
        /// </summary>
        /// <param name="title">标题</param>
        /// <param name="message">message</param>
        /// <param name="alias">客户的别名组</param>
        /// <returns></returns>
        public MessageResult SendAliaMsg(string title, Message message, string[] alias)
        {
            MessageResult result = new MessageResult();
            try
            {
                JPushClient client = new JPushClient(app_key, master_secret);
                PushPayload payload = new PushPayload();
                Notification not = new Notification();
                not.setAlert(title);


                payload.notification = not;
                payload.platform = Platform.all();
                payload.audience = Audience.s_alias(alias);
                payload.message = message;
                result = client.SendPush(payload);
            }
            catch (APIRequestException e)
            {
                SystemLogsBiz.logv("推送失败APIRequestException", e.ErrorMessage, "类 JpushHelp");
            }
            catch (APIConnectionException e)
            {
                SystemLogsBiz.logv("推送失败APIConnectionException", e.Message, "类 JpushHelp");
            }
            return result;
        }
        /// <summary>
        /// 发送别名消息
        /// </summary>
        /// <param name="title">标题</param>
        /// <param name="message">消息</param>
        /// <param name="alias">客户的别名组</param>
        /// <returns></returns>
        public MessageResult SendAliaMsg(Notification not, Message message, string[] alias)
        {
            MessageResult result = new MessageResult();
            try
            {
                JPushClient client = new JPushClient(app_key, master_secret);

                PushPayload payload = new PushPayload();
                payload.notification = not;
                payload.platform = Platform.all();
                payload.audience = Audience.s_alias(alias);
                payload.message = message;
                result = client.SendPush(payload);
            }
            catch (APIRequestException e)
            {
                SystemLogsBiz.logv("推送失败APIRequestException", e.ErrorMessage, "类 JpushHelp");
            }
            catch (APIConnectionException e)
            {
                SystemLogsBiz.logv("推送失败APIConnectionException", e.Message, "类 JpushHelp");
            }
            return result;
        }

        /// <summary>
        /// 发送标签消息
        /// </summary>
        /// <param name="title">标题</param>
        /// <param name="Content">内容</param>
        /// <param name="alias">标签组</param>
        /// <returns></returns>
        public MessageResult SendTagMsg(string title, string Content, string[] Tags)
        {
            MessageResult result = new MessageResult();
            try
            {
                JPushClient client = new JPushClient(app_key, master_secret);
                string MSG_CONTENT = Content;
                PushPayload payload = new PushPayload();
                Notification not = new Notification();
                not.setAlert(title);

                payload.notification = not;
                payload.platform = Platform.all();
                payload.audience = Audience.s_tag(Tags);
                payload.message = Message.content(title)
                                          .AddExtras("Content", Content)
                                          .AddExtras("Title", title)
                                          .AddExtras("key2", false);
                result = client.SendPush(payload);
            }
            catch (APIRequestException e)
            {
                SystemLogsBiz.logv("推送失败APIRequestException", e.ErrorMessage, "类 JpushHelp");
            }
            catch (APIConnectionException e)
            {
                SystemLogsBiz.logv("推送失败APIConnectionException", e.Message, "类 JpushHelp");
            }
            return result;
        }

        /// <summary>
        /// 发送标签消息
        /// </summary>
        /// <param name="title">标题</param>
        /// <param name="message">message</param>
        /// <param name="alias">标签组</param>
        /// <returns></returns>
        public MessageResult SendTagMsg(string title, Message message, string[] Tags)
        {
            MessageResult result = new MessageResult();
            try
            {
                JPushClient client = new JPushClient(app_key, master_secret);
                PushPayload payload = new PushPayload();
                Notification not = new Notification();
                not.setAlert(title);

                payload.notification = not;
                payload.platform = Platform.all();
                payload.audience = Audience.s_tag(Tags);
                payload.message = message;
                result = client.SendPush(payload);
            }
            catch (APIRequestException e)
            {
                SystemLogsBiz.logv("推送失败APIRequestException", e.ErrorMessage, "类 JpushHelp");
            }
            catch (APIConnectionException e)
            {
                SystemLogsBiz.logv("推送失败APIConnectionException", e.Message, "类 JpushHelp");
            }
            return result;
        }
        /// <summary>
        /// 发送标签消息
        /// </summary>
        /// <param name="title">标题</param>
        /// <param name="message">消息</param>
        /// <param name="alias">标签组</param>
        /// <returns></returns>
        public MessageResult SendTagMsg(Notification not, Message message, string[] Tags)
        {
            MessageResult result = new MessageResult();
            try
            {
                JPushClient client = new JPushClient(app_key, master_secret);

                PushPayload payload = new PushPayload();
                payload.notification = not;
                payload.platform = Platform.all();
                payload.audience = Audience.s_tag(Tags);
                payload.message = message;
                result = client.SendPush(payload);
            }
            catch (APIRequestException e)
            {
                SystemLogsBiz.logv("推送失败APIRequestException", e.ErrorMessage, "类 JpushHelp");
            }
            catch (APIConnectionException e)
            {
                SystemLogsBiz.logv("推送失败APIConnectionException", e.Message, "类 JpushHelp");
            }
            return result;
        }

        /// <summary>
        /// 发送消息
        /// </summary>
        /// <param name="title">标题</param>
        /// <param name="message">消息</param>
        /// <param name="audience">用户类型</param>
        /// <returns></returns>
        public MessageResult SendMsg(Notification not, Message message, Audience audience)
        {
            MessageResult result = new MessageResult();
            try
            {
                JPushClient client = new JPushClient(app_key, master_secret);

                PushPayload payload = new PushPayload();
                payload.notification = not;
                payload.platform = Platform.all();
                payload.audience = audience;
                payload.message = message;
                result = client.SendPush(payload);
            }
            catch (APIRequestException e)
            {
                SystemLogsBiz.logv("推送失败APIRequestException", e.ErrorMessage, "类 JpushHelp");
            }
            catch (APIConnectionException e)
            {
                SystemLogsBiz.logv("推送失败APIConnectionException", e.Message, "类 JpushHelp");
            }
            return result;
        }
        /// <summary>
        /// 发送消息
        /// </summary>
        /// <param name="title">标题</param>
        /// <param name="message">消息</param>
        /// <param name="audience">用户类型</param>
        /// <returns></returns>
        public MessageResult SendMsg(PushPayload payload)
        {
            MessageResult result = new MessageResult();
            try
            {
                JPushClient client = new JPushClient(app_key, master_secret);
                result = client.SendPush(payload);
            }
            catch (APIRequestException e)
            {
                SystemLogsBiz.logv("推送失败APIRequestException", e.ErrorMessage, "类 JpushHelp");
            }
            catch (APIConnectionException e)
            {
                SystemLogsBiz.logv("推送失败APIConnectionException", e.Message, "类 JpushHelp");
            }
            return result;
        }
    }
}
