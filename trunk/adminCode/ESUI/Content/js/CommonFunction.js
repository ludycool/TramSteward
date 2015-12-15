
function ConvertToTreeData(data) {//转为tree所须的格式
    $.each(data, function (i, n) {
        n = ConvertToTreeDataSon(n);
    })
    return data;
}
function ConvertToTreeDataSon(obj) {
    if (obj.children != null) {
        obj.id = obj.Id;
        obj.text = obj.Name;
        var ss = obj.children;
        $.each(obj.children, function (j, d) {
            d = ConvertToTreeDataSon(d);
        })
    } else {
        obj.id = obj.Id;
        obj.text = obj.Name;
    }
    return obj;
}

//html字符串正则替换
function htmlEncode(str) {
    var _str = '';
    if (str.length == 0) return '';
    _str = str.replace(new RegExp('<', 'gm'), '&lt');
    _str = _str.replace(new RegExp('>', 'gm'), '&gt');

    return _str;
}
//html字符串正则替换
function htmlDecode(str) {
    var _str = '';
    if (str.length == 0) return '';
    _str = str.replace(new RegExp('&lt', 'gm'), '<');
    _str = _str.replace(new RegExp('&gt', 'gm'), '>');

    return _str;
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
// 将日期类型转换成字符串型格式yyyy-MM-dd hh:mm
////////////////////////////////////////////////////////
function ChangeTimeToString(DateIn) {
    var Year = 0;
    var Month = 0;
    var Day = 0;
    var Hour = 0;
    var Minute = 0;
    var CurrentDate = "";

    //初始化时间
    Year = DateIn.getYear();
    Month = DateIn.getMonth() + 1;
    Day = DateIn.getDate();
    Hour = DateIn.getHours();
    Minute = DateIn.getMinutes();


    CurrentDate = Year + "-";
    if (Month >= 10) {
        CurrentDate = CurrentDate + Month + "-";
    }
    else {
        CurrentDate = CurrentDate + "0" + Month + "-";
    }
    if (Day >= 10) {
        CurrentDate = CurrentDate + Day;
    }
    else {
        CurrentDate = CurrentDate + "0" + Day;
    }

    if (Hour >= 10) {
        CurrentDate = CurrentDate + " " + Hour;
    }
    else {
        CurrentDate = CurrentDate + " 0" + Hour;
    }
    if (Minute >= 10) {
        CurrentDate = CurrentDate + ":" + Minute;
    }
    else {
        CurrentDate = CurrentDate + ":0" + Minute;
    }
    return CurrentDate;
}

function paramString2obj(serializedParams) {

    var obj = {};
    function evalThem(str) {
        var attributeName = str.split("=")[0];
        var attributeValue = str.split("=")[1];
        if (!attributeValue) {
            return;
        }

        var array = attributeName.split(".");
        for (var i = 1; i < array.length; i++) {
            var tmpArray = Array();
            tmpArray.push("obj");
            for (var j = 0; j < i; j++) {
                tmpArray.push(array[j]);
            };
            var evalString = tmpArray.join(".");
            // alert(evalString);
            if (!eval(evalString)) {
                eval(evalString + "={};");
            }
        };

        eval("obj." + attributeName + "='" + attributeValue + "';");

    };

    var properties = serializedParams.split("&");
    for (var i = 0; i < properties.length; i++) {
        evalThem(properties[i]);
    };

    return obj;
}


$.fn.form2json = function () {
    var serializedParams = this.serialize();
    var obj = paramString2obj(serializedParams);
    return JSON.stringify(obj);
}

function alerts(str, type) {

    if (type == 1)
        $.messager.alert('系统提示', str);
    if (type == 2)
        $.messager.alert('系统提示', str, 'info');
    if (type == 3)
        $.messager.alert('系统提示', str, 'question');
    if (type == 4)
        $.messager.alert('系统提示', str, 'warning');
    if (type == 5)
        $.messager.alert('系统提示', str, 'error');
}
function alertUrl(str, url) {

    $.messager.alert('系统提示', str, 'warning');
    setTimeout("location.href = '" + url + "'", 1000)
}
function clearNoNum(obj) {
    //先把非数字的都替换掉，除了数字和. 
    obj.value = obj.value.replace(/[^\d.]/g, "");
    //必须保证第一个为数字而不是. 
    obj.value = obj.value.replace(/^\./g, "");
    //保证只有出现一个.而没有多个. 
    obj.value = obj.value.replace(/\.{2,}/g, ".");
    //保证.只出现一次，而不能出现两次以上
    obj.value = obj.value.replace(".", "$#$").replace(/\./g, "").replace("$#$", ".");
}
function clearNoNumberContainDot(obj) {
    //先把非数字的都替换掉
    obj.value = obj.value.replace(/[^\d]/g, "");
}
var DataBaseFunction = {
    ClearForm: function (formId) {
        $("#" + formId).form("clear");
        //$("#" + formId + " :hidden").val("");
        //$("#" + formId + " :text").val("");
        //$("#" + formId + " textarea").val("");

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
            var dd = $("#" + formId + " [name='" + items + "']");
            if (dd != null) {
                var ty = dd.attr("type");
                if (ty != null && ty == "radio") {
                    //dd.removeAttr("CHECKED");
                    //$("[name=" + items + "][value=" + data[items] + "]").attr("checked", true); ie9以上失效
                    var _o = document.getElementsByName(items);
                    for (i = 0; i < _o.length; i++) {
                        if (_o[i].value == data[items])
                        { _o[i].checked = true; }
                        else {
                            _o[i].checked = false;
                        }
                    }
                } else if (ty != null && ty == "checkbox") {
                    dd.removeAttr("CHECKED");
                    var strdata = data[items].split("%&");
                    for (var k = 0; k < strdata.length; k++) {
                        $("[name=" + items + "][value=" + strdata[k] + "]").attr("checked", true);

                    }

                } else if (dd.get(0) != undefined && dd.get(0).tagName == "SPAN") {
                    dd.html(data[items]);
                } else {
                    dd.val(data[items]);
                }
            }
        }
    },
    deleteInfo: function (datagridId, Idfield, Namefield) {
        //得到按钮选择的数据的ID
        var rows = $("#" + datagridId).datagrid("getSelections");
        //首先判断按钮是否已经选择了需要删除的数据,然后循环将按钮选择的数据传递到后台
        if (rows.length >= 1) {
            //遍历出按钮选择的数据的信息，这就是按钮按钮选择删除的按钮ID的信息
            var ids = "";   //1,2,3,4,5
            for (var i = 0; i < rows.length; i++) {
                //异步将删除的ID发送到后台，后台删除之后，返回前台，前台刷洗表格
                ids +="'"+ rows[i][Idfield] + "',";
            }
            //最后去掉最后的那一个,
            ids = ids.substring(0, ids.length - 1);
            //获取按钮选择的按钮信息，如果按钮选择了已经登录的按钮的话需要给出不能删除的信息
            var Name = "";
            for (var i = 0; i < rows.length; i++) {
                Name += rows[i][Namefield] + ",";
            }
            Name = Name.substring(0, Name.length - 1);
            //首先取出来到底是直接删除还是伪删除发送异步请求的地址和是否是伪删除的参数
            var postData = "";

            postData = {
                IDSet: ids
            };
            //}
            //else {
            //    postData = {
            //        ID: ids, Not: not
            //    }
            //}
            //然后确认发送异步请求的信息到后台删除数据
            $.messager.confirm("删除信息", "您确认删除<font color='red' size='3'>" + Name + "</font>吗？", function (Delete) {
                if (Delete) {
                    $.get(BaseUrl + "Del", postData, function (data) {
                        alerts(data.Msg, 2);
                        if (data.Code > 0) {
                            $("#" + datagridId).datagrid("reload");
                            $("#" + datagridId).datagrid("clearSelections");
                        }

                    });
                }
            });
        }
        else {
            alert("请选择你要删除的数据");
        }

    },
    Search: function (FormId, DataGridId) {
        var FData = $("#" + FormId).serializeArray();
        var data = [];
        for (var i = 0; i < FData.length; i++) {
            if (FData[i].value != "") {
                data.push(FData[i]);
            }
        }
        var result = "";
        for (var i = 0; i < data.length; i++) {
            result += data[i].name + ":" + data[i].value + "█";
        }
        result = result.substring(0, result.length - 1);
        $('#' + DataGridId).datagrid('load', {
            sqlSet: result
        });
    },
    Search2: function (FormId, DataGridId) {
        var FData = $("#" + FormId).serializeArray();
        var FData2 = $("#" + FormId).form2json();
        var data = [];
        var result = "";
        for (var i = 0; i < FData.length; i++) {
            if (FData[i].value != "") {
                //  data.push(FData[i]);
                result += "{field: '" + FData[i].name + "',value:'" + FData[i].value + "',op:'equal'},";

            }
        }


        //for (var i = 0; i < data.length; i++) {
        //    result += data[i].name + ":" + data[i].value + "█";
        //}
        result = result.substring(0, result.length - 1);
        result = "{op: 'and',rules:[" + result + "]}";
        //  var obj = eval("(" + result + ")");
        $('#' + DataGridId).datagrid('load', {
            sqlSet: result
        });
    }

}
function PanelAutoResizeWH(PanelSelect, w, h) //设置宽高自适应w  h 宽高偏移量
{
    var winWidth = 0;
    var winHeight = 0;
    //获取窗口宽度
    if (window.innerWidth)
        winWidth = window.innerWidth;
    else if ((document.body) && (document.body.clientWidth))
        winWidth = document.body.clientWidth;
    //获取窗口高度
    if (window.innerHeight)
        winHeight = window.innerHeight;
    else if ((document.body) && (document.body.clientHeight))
        winHeight = document.body.clientHeight;
    //通过深入Document内部对body进行检测，获取窗口大小
    if (document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth) {
        winHeight = document.documentElement.clientHeight;
        winWidth = document.documentElement.clientWidth;
    }
    var ww = winWidth - w;
    var hh = winHeight - h;
    $(PanelSelect).window('resize', {
        width: ww,
        height: hh
    });


}

function AutoWH(PanelSelect, w, h) //设置宽高自适应w  h 宽高偏移量
{
    var winWidth = 0;
    var winHeight = 0;
    //获取窗口宽度
    if (window.innerWidth)
        winWidth = window.innerWidth;
    else if ((document.body) && (document.body.clientWidth))
        winWidth = document.body.clientWidth;
    //获取窗口高度
    if (window.innerHeight)
        winHeight = window.innerHeight;
    else if ((document.body) && (document.body.clientHeight))
        winHeight = document.body.clientHeight;
    //通过深入Document内部对body进行检测，获取窗口大小
    if (document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth) {
        winHeight = document.documentElement.clientHeight;
        winWidth = document.documentElement.clientWidth;
    }
    var ww = winWidth - w;
    var hh = winHeight - h;
    $(PanelSelect).width(ww);
    $(PanelSelect).height(hh);

}
function AutoW(PanelSelect, w) //设置宽自适应w宽高偏移量
{
    var winWidth = 0;
    //获取窗口宽度
    if (window.innerWidth)
        winWidth = window.innerWidth;
    else if ((document.body) && (document.body.clientWidth))
        winWidth = document.body.clientWidth;

    //通过深入Document内部对body进行检测，获取窗口大小
    if (document.documentElement && document.documentElement.clientWidth) {
        winWidth = document.documentElement.clientWidth;
    }
    var ww = winWidth - w;
    $(PanelSelect).width(ww);
}
function AutoH(PanelSelect, h) //设置高自适应 h 宽高偏移量
{

    var winHeight = 0;
    //获取窗口高度
    if (window.innerHeight)
        winHeight = window.innerHeight;
    else if ((document.body) && (document.body.clientHeight))
        winHeight = document.body.clientHeight;
    //通过深入Document内部对body进行检测，获取窗口大小
    if (document.documentElement && document.documentElement.clientHeight) {
        winHeight = document.documentElement.clientHeight;
    }
    var hh = winHeight - h;
    $(PanelSelect).height(hh);
}