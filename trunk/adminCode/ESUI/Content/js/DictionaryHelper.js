


var dataAll = new Array();//全部数据，包括子集
function BindDictionary(combotreeId, ValueName) {//自己和子集
    $.ajax({
        url: '/httpHandle/DictionaryHandler.ashx?action=GetSonDictionary&ValueName=' + ValueName,
        type: 'POST',
        cache: false,
        error: function () { alert('获取类别出错'); },
        success: function (result) {
            var Dictionarydata = eval(result);
            pushAll(Dictionarydata);
            $('#' + combotreeId).combotree('loadData', ConvertToTreeData(Dictionarydata));
        }
    });
}
function GetSonDictionaryNo(combotreeId, ValueName) {//除掉本身只要子集
    $.ajax({
        url: '/httpHandle/DictionaryHandler.ashx?action=GetSonDictionaryNo&ValueName=' + ValueName,
        type: 'POST',
        cache: false,
        error: function () { alert('获取类别出错'); },
        success: function (result) {
            var Dictionarydata = eval(result);
            pushAll(Dictionarydata);
            $('#' + combotreeId).combotree('loadData', ConvertToTreeData(Dictionarydata));
        }
    });
}
//取名
function GetNameByValue(value) {
    var ss = "";
    $.each(dataAll, function (i, n) {
        if (n.id == value) {
            ss = n.Name;
            return false;
        }
    })
    return ss;

}
//取出数据
function pushAll(obj) {
    dataAll = new Array();//全部数据，包括子集
    $.each(obj, function (i, n) {
        pushSon(n);
    })

}
function pushSon(obj) {
    dataAll.push(obj);
    if (obj.children != null) {
        $.each(obj.children, function (j, d) {
            pushSon(d);
        })
    }
}
