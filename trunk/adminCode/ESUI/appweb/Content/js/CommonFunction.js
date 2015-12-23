var DataBaseFunction = {
    ClearForm: function (formId) {
        $("#" + formId + " :text").val("");
        $("#" + formId + " textarea").val("");
        $("#" + formId + " :hidden").val("");
    },
    GetFormData: function (formId) {
        //获取表单数据
        var postData = $("#" + formId).serializeArray();
        var data = [];
        for (var i = 0; i < postData.length; i++) {
            var IsAdd = true;
            for (var j = 0; j < data.length; j++) {

                if (data[j].name == postData[i].name) {
                    data[j].value += "%&" + postData[i].value//重复键用"%&"隔开
                    IsAdd = false;
                    break;
                }
            }
            if (IsAdd) {
                data.push(postData[i]);
            }
        }
        return data;
    },
    BindForm: function (formId, data) {//绑定数据给表单
        for (items in data) {
            var dd = $("#" + formId + " [name^='" + items + "']");
            if (dd != null) {
                var ty = dd.attr("type");
                if (ty != null && ty == "radio") {
                    dd.removeAttr("CHECKED");
                    $("[name=" + items + "][value=" + data[items] + "]").attr("checked", true);

                } else if (ty != null && ty == "checkbox") {
                    dd.removeAttr("CHECKED");
                    var strdata = data[items].split("%&");
                    for (var k = 0; k < strdata.length; k++) {
                        $("[name=" + items + "][value=" + strdata[k] + "]").attr("checked", true);

                    }

                } else {
                  //  dd.val(data[items]);
                    dd.html(data[items]);
                }
            }
        }
    }

}
function changeTwoDecimal(floatvar) {//小数点后1位
    var f_x = parseFloat(floatvar);
    if (isNaN(f_x)) {
     //   alert('function:changeTwoDecimal->parameter error');
        return 0;
    }
    var f_x = Math.round(floatvar * 10) / 10;
    return f_x;
}
//字符串截取
function StringSub(value, length) {
    if (value != undefined) {
        if (value.length > length) {
            value = value.substring(0, length);
        }
    }
    return value;
}
function tobottom() {//滑到底部
    var $w = $(window);
    $w.smoothScroll({ position: $(document).height() - $w.height() });
}
function totop() {//滑到顶部

    var $w = $(window);//滑到顶部
    $w.smoothScroll({ position: 0 });
}
