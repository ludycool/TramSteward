<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ESUI.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <%--<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>--%>
    <script src="Content/JqueryEasyUI/jquery1.9.min.js"></script>
      <script/ type="text/javascript">
          var BaseUrl = "/PatServer/AppUser.ashx";
          var json = '?json={"jsonEntity":{"":""},"action":"appreg"}';
          function go() {


              var postData = $("#form1").serializeArray();
              //发送异步请求到后台保存数据
              $.post(BaseUrl + json, postData, function (result) {
                  var data = eval('(' + result + ')');
                  alert(data.Msg);
              });
          }
          function UPimg() {
              var json = '?json={"jsonEntity":{"":""},"action":"HttpUploadImg"}';
              //----上传头像
              $("#form1").form('submit', {
                  url: "/httpSever/File_ImageHandler.ashx" + json,
                  onSubmit: function () {

                  },
                  success: function (data) {
                      var d = eval('(' + data + ')');
                      alerts(d.Data, 5);
                  }
              })

          }
         </script>
</head>
<body>
   
</body>
</html>
