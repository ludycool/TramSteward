/*
*	全国三级城市联动 js版
*/


function change(v) {
     sProvince = document.getElementById(s[0]);
     sCity = document.getElementById(s[1]);
     sCArea = document.getElementById(s[2]);
    switch (v) {
        case 0:
            $("#" + s[0]).val(ProvinceD[0].ValueName);
            change(v + 1);
            break;
        case 1:
            sCity.options.length = 0;//清空
            $("#" + s[1]).val("");
            var prId;//省 的id
            var selectproCode = $("#"+s[0]).val();
            $.each(ProvinceD, function (i, n) {
                if (selectproCode == n.ValueName)
                {
                    prId = n.Id;//当前选的省的id
                    return true;
                }
            });
            $.each(CityD, function (i, n) {
                if (prId == n.ParentId) {
                   
                    sCity.options.add(new Option(n.Name, n.ValueName));
                }
            });
            change(v + 1);
            break;
        case 2:
            sCArea.options.length = 0;
            $("#" + s[2]).val("");
            var CId;//市 的id
            var selectCCode = $("#" + s[1]).val();
            $.each(CityD, function (i, n) {
                if (selectCCode == n.ValueName) {
                    CId = n.Id; //当前选的市的id
                    return true;
                }
            });
            $.each(AreaD, function (i, n) {
                if (CId == n.ParentId) {
                    sCArea.options.add(new Option(n.Name, n.ValueName));
                }
            });
            break;
    }
}

var dsy =  new Array();//所有数据
var ProvinceD = new Array();//省 [{"Id":"1","ParentId":"0","Name":"广西","ValueName":"45"}]
var CityD = new Array();//所有城市 [{"Id":"2","ParentId":"1","Name":"南宁市","ValueName":"4501"}]
var AreaD = new Array();//所有区 [{"Id":"3","ParentId":"2","Name":"西乡唐","ValueName":"450102"}]


var s = ["ProvinceCode", "CityCode", "AreaCode"];//三个select的id
var opt0 = ["省份","地级市","市、县级市"];//初始值
var sProvince= document.getElementById(s[0]);
var sCity=document.getElementById(s[1]);
var sCArea=document.getElementById(s[2]);
function _init_area() {  //初始化函数
    if (dataAll.length == 0) {
        $.ajax({
            url: '/httpHandle/DictionaryHandler.ashx?action=GetSys_CityArea',
            type: 'POST',
            cache: true,
            error: function () { alert('获取类别出错'); },
            success: function (result) {
                ProvinceD = new Array();
                CityD = new Array();
                AreaD = new Array();
                var dataAll = eval(result);
                $.each(dataAll, function (i, n) {
                    switch (n.AreaTypes) {
                        case 2:
                            ProvinceD.push(n);
                            document.getElementById(s[0]).options.add(new Option(n.Name, n.ValueName));
                            break;
                        case 1:
                            CityD.push(n);
                            break;
                        case 0:
                            AreaD.push(n);
                            break;
                    }
                });


            }
        });
    }


	for(i=0;i<s.length-1;i++){
	  document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");
	}
}



///////////////////////////////////////////////////////////////////////////////搜索用的
var d = ["ProvinceCode_eq", "CityCode_eq", "AreaCode_eq"];//三个select的id  

function _init_areaForSearch() {  //初始化函数   搜索用
    document.getElementById(d[0]).options.length = 0;//清空
    if (dataAll.length == 0) {
        $.ajax({
            url: '/httpHandle/DictionaryHandler.ashx?action=GetSys_CityArea',
            type: 'POST',
            cache: true,
            error: function () { alert('获取类别出错'); },
            success: function (result) {
                ProvinceD = new Array();
                CityD = new Array();
                AreaD = new Array();
                var dataAll = eval(result);
                $.each(dataAll, function (i, n) {
                    switch (n.AreaTypes) {
                        case 2:
                            ProvinceD.push(n);
                            if (document.getElementById(d[0]) != null)
                            {
                                document.getElementById(d[0]).options.add(new Option(n.Name, n.ValueName));

                            }
                            break;
                        case 1:
                            CityD.push(n);
                            break;
                        case 0:
                            AreaD.push(n);
                            break;
                    }
                });
                changeForSearch(0);//省城市默认选择第一个

            }
        });
    } else {
        $.each(ProvinceD, function (i, n) {
          document.getElementById(d[0]).options.add(new Option(n.Name, n.ValueName));
        });
        changeForSearch(0);//省城市默认选择第一个
    }

    for (i = 0; i < s.length - 1; i++) {
        document.getElementById(d[i]).onchange = new Function("changeForSearch(" + (i + 1) + ")");
    }
}
function changeForSearch(v) {
    var sProvince = document.getElementById(d[0]);
    var sCity = document.getElementById(d[1]);
    var sCArea = document.getElementById(d[2]);
    switch (v) {
        case 0:
            $("#" + d[0]).val(ProvinceD[0].ValueName);
            changeForSearch(v + 1);
            break;
        case 1:
            sCity.options.length = 0;//清空
            sCity.options.add(new Option("请选择", ""));
            $("#" + d[1]).val("");
            var prId;//省 的id
            var selectproCode = $("#" + d[0]).val();
            $.each(ProvinceD, function (i, n) {
                if (selectproCode == n.ValueName) {
                    prId = n.Id;//当前选的省的id
                    return true;
                }
            });
            $.each(CityD, function (i, n) {
                if (prId == n.ParentId) {

                    sCity.options.add(new Option(n.Name, n.ValueName));
                }
            });
            changeForSearch(v + 1);
            break;
        case 2:
            sCArea.options.length = 0;
            sCArea.options.add(new Option("请选择", ""));
            $("#" + d[2]).val("");
            var CId;//市 的id
            var selectCCode = $("#" + d[1]).val();
            $.each(CityD, function (i, n) {
                if (selectCCode == n.ValueName) {
                    CId = n.Id; //当前选的市的id
                    return true;
                }
            });
            $.each(AreaD, function (i, n) {
                if (CId == n.ParentId) {
                    sCArea.options.add(new Option(n.Name, n.ValueName));
                }
            });
            break;
    }
}

