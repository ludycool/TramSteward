// JavaScript Document
var plug = {
    //自定义提示窗         
    alerts: function (msg) {
        //自定义提示窗Html代码
        msg.length > 0 ? msg : msg = "";
        var html = "<div class=\"am-modal am-modal-alert\" tabindex=\"-1\" id=\"atom-alert\">" +
					  "<div class=\"am-modal-dialog\">" +
						"<div class=\"am-modal-hd\">系统提示</div>" +
						"<div class=\"am-modal-bd\">" +
						  msg +
						"</div>" +
						"<div class=\"am-modal-footer\">" +
						  "<span class=\"am-modal-btn\">确定</span>" +
						"</div>" +
					  "</div>" +
					"</div>";
        //先检查是否已经存在该元素
        var alertObjHtml = $("#atom-alert");
        if (alertObjHtml.size() > 0) {
            alertObjHtml.remove();	//清除元素
        }
        $("body").append(html);
        $('#atom-alert').modal('open');
    },
    showLoading: function (msg) {
        msg = typeof (msg) == 'undefined' ? "努力加载中..." : (msg.length > 0 ? msg : msg = "努力加载中...");
        //自定义提示窗Html代码
        var html = "<div class=\"am-modal am-modal-alert\" tabindex=\"-1\" id=\"atom-loading\">" +
					  "<div class=\"am-modal-dialog\">" +
						"<div class=\"am-modal-hd\"></div>" +
						"<div class=\"am-modal-bd\"><i class=\"am-icon-spinner am-icon-pulse\"></i> " +
						  msg +
						"</div>" +
					  "</div>" +
					"</div>";
        //先检查是否已经存在该元素
        var loadingObjHtml = $("#atom-loading");
        if (loadingObjHtml.size() > 0) {
            loadingObjHtml.remove();	//清除元素
        }
        $("body").append(html);
        $('#atom-loading').modal();
    },
    closeLoading: function () {
        var loadingObjHtml = $("#atom-loading");
        if (loadingObjHtml.size() > 0) {
            $('#atom-loading').modal('close');
        }
    }

};