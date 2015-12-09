
var imgAddIdSet = new Array();//添加的ID集
var imgFileList;//文件数据集
var imgDelIdSet = new Array();//删除的文件Id集
jQuery(document).ready(function () {




    //跟添加按钮绑定点击事件
    $("#tianjia").bind("click", function () {
        //克隆id=content下面的元素。添加到id=zhi的div里面
        $("#content").clone(true).appendTo("#zhi");

    });

    //删除file控件操作
    $("#jian").click(function () {
        imgDelIdSet.push($(this).parent().children("#fileId").val());
        $(this).parent().remove();

    });


});
function FileUp2(tid, table) {//带所属id
    //----上传文件

    $("#img_Form").form('submit', {
        url: "/httpHandle/ImageHandler.ashx?action=addImg&SourceTable=" + table + "&ToId=" + tid,
        onSubmit: function () {

        },
        success: function (data) {
            var d = eval('(' + data + ')');
            if (d.Success) {
                var imgList = eval('(' + d.Data + ')');
                $("#content").clone(true).appendTo("#zhi");
                $("#zhi").children("div:last").children("#fileId").val(imgList[0].Id);
                $("#zhi").children("div:last").children("#imgShow").attr('src', imgList[0].FullRoute);

            }
            else {
                alerts(d.Message, 5)
            }

        }
    })
}
function FileUp(table) {
    //----上传文件

    $("#ff").form('submit', {
        url: "/httpHandle/ImageHandler.ashx?action=addImg&SourceTable=" + table,
        onSubmit: function () {

        },
        success: function (data) {
            var d = eval('(' + data + ')');
            if (d.Success) {
                var imgList = eval('(' + d.Data + ')');
                $("#content").clone(true).appendTo("#zhi");
                $("#zhi").children("div:last").children("#fileId").val(imgList[0].Id);
                $("#zhi").children("div:last").children("#imgShow").attr('src', imgList[0].FullRoute);
                imgAddIdSet.push(imgList[0].Id)

                var file = $("#fileimg");//清空文件
                file.after(file.clone().val(""));
                file.remove();

            }
            else {
                alerts(d.Message, 5)
            }

        }
    })
}


//更改文件所属ID
function SaveToid(Tid) {

    var postData = new Array();
    var ToId =
    {
        'name': "ToId",        //属性名用引号括起来，属性间由逗号隔开
        'value': Tid
    };
    postData.push(ToId);
    var idSet = "";
    for (var i = 0; i < imgAddIdSet.length; i++) {

        idSet += "'" + imgAddIdSet[i] + "',";
    }
    if (imgAddIdSet.length > 0) {
        idSet = idSet.substring(0, idSet.length - 1);
    }
    postData.push({ name: "IdSet", value: idSet });
    //发送异步请求到后台保存按钮数据
    $.post("/httpHandle/ImageHandler.ashx?action=SaveToid", postData, function (data) {
        var d = eval('(' + data + ')');
        if (d.Success) {

        }
        else {
            // alerts(d.Message, 5)
        }
        imgAddIdSet = new Array();//清空
    });

}
function Delfile() {

    var postData = new Array();
    var idSet = "";
    for (var i = 0; i < imgDelIdSet.length; i++) {

        idSet += "'" + imgDelIdSet[i] + "',";
    }
    if (imgDelIdSet.length > 0) {
        idSet = idSet.substring(0, idSet.length - 1);
    }
    postData.push({ name: "IdSet", value: idSet });
    //发送异步请求到后台保存按钮数据
    $.post("/httpHandle/ImageHandler.ashx?action=Delfile", postData, function (data) {
        var d = eval('(' + data + ')');
        if (d.Success) {

        }
        else {
            //  alerts(d.Message, 5)
        }
        imgDelIdSet = new Array();//清空
    });

}
function GetFileList(ToId) {
    $("#zhi").children().remove();//清空
     imgAddIdSet = new Array();//添加的ID集
     imgDelIdSet = new Array();//删除的文件Id集
    var file = $("#fileimg");//清空file内容的方法
    file.after(file.clone().val(""));
    file.remove();

    if (ToId !== null && ToId !== undefined && ToId !== "") {
        //发送异步请求到后台保存按钮数据
        $.post("/httpHandle/ImageHandler.ashx?action=GetFileList&ToId=" + ToId, function (resultData) {
            var data = eval('(' + resultData + ')');
            if (data != null) {
                $.each(data, function (i, n) {
                    if (n != null) {
                        $("#content").clone(true).appendTo("#zhi");
                        $("#zhi").children("div:last").children("#fileId").val(n.Id);
                        $("#zhi").children("div:last").children("#imgShow").attr('src', n.FullRoute);
                    }
                });
            }

        });
    }

}
function fileDown(Url,fileName) {

    if (Url != "") {
        $.post("/httpHandle/ImageHandler.ashx?action=Download&Url=" + Url + "&fileName=" + fileName, function (resultData) {

        });
    }
}
function FileDel() {

}