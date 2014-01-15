<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CSharpGoWeb._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="stylesheet" type="text/css" href="/js/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="/js/themes/icon.css" />

    <script type="text/javascript" src="/js/jquery.js"></script>

    <script type="text/javascript" src="/js/jquery.easyui.min.js"></script>

    <script type="text/javascript" src='/js/outlookstyle.js'> </script>

    <link rel="stylesheet" href="/css/zTreeStyle/zTreeStyle.css" type="text/css">

    <script type="text/javascript" src="/js/jquery.ztree.core-3.5.js"></script>

    <script type="text/javascript">

$("document").ready(function(){
$.fn.zTree.init($("#treeDemo"), setting, zNodes);
$('#tabs').tabs('add',{
title:'我的主页',
iconCls: 'icon icon-home',
content:createFrame('http://www.cnblogs.com/ice-river/')
});
tabClose();
tabCloseEven();
});

        var setting = {
            view: {
                dblClickExpand: false,
                showLine: true,
                selectedMulti: false,
                expandSpeed: ($.browser.msie && parseInt($.browser.version) <= 6) ? "" : "fast"
            },
            data: {
                simpleData: {
                    enable: true,
                    idKey: "id",
                    pIdKey: "pId",
                    rootPId: ""
                }
            },
            callback: {
                beforeClick: function (treeId, treeNode) {
                    var zTree = $.fn.zTree.getZTreeObj("tree");
                    if (treeNode.isParent) {
                        zTree.expandNode(treeNode);
                        return false;
                    } else {
                        addTab(treeNode.name, treeNode.file,null);
                        return true;
                    }
                }
            }
        };
  
  
        var zNodes =[
                    { name:"基础练习", open:true,
                        children: [
                            {
                                name: "字符串合并与分解",
                                file: "StringJoinAndSplit.aspx"
                            },
                            {
                                name: "身份证号解析",
                                file: "frm_IDParse.aspx"
                            }
                        ]}               
        ];
    </script>

</head>
<body class="easyui-layout" style="overflow-y: hidden" fit="true" scroll="no">
    <div id="loading-mask" style="position: absolute; top: 0px; left: 0px; width: 100%;
        height: 100%; background: #D2E0F2; z-index: 20000">
        <div id="pageloading" style="position: absolute; top: 50%; left: 50%; margin: -120px 0px 0px -120px;
            text-align: center; border: 2px solid #8DB2E3; width: 200px; height: 40px; font-size: 14px;
            padding: 10px; font-weight: bold; background: #fff; color: #15428B;">
            <img src="images/loading.gif" align="absmiddle" />
            网络加载中,请稍候...
        </div>
    </div>
    <div region="north" split="true" border="false" style="vertical-align: middle; overflow: hidden;
        height: 30px; background: url(images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%;
        line-height: 20px; color: #fff; font-family: Verdana, 微软雅黑,黑体">
        <span style="padding-left: 10px; font-size: 15px; font-weight: bold;">
            <img src="images/user_logo.png" width="20" height="20" align="absmiddle" />
            &nbsp;CSharpGoWeb </span>
    </div>
    <div region="south" split="true" style="height: 30px; background: #D2E0F2;">
    </div>
    <div region="west" split="true" title="功能菜单" style="width: 220px;" id="west">
        <ul id="treeDemo" class="ztree">
        </ul>
    </div>
    </div>
    <div id="mainPanle" region="center" style="background: #eee; overflow-y: hidden">
        <div id="tabs" class="easyui-tabs" fit="true" border="false">
            <!--<div title='隐藏层(勿删)'></div>-->
        </div>
    </div>
    <div id="mm" class="easyui-menu" style="width: 150px;">
        <div id="mm-tabupdate">
            刷新选项卡</div>
        <div class="menu-sep">
        </div>
        <div id="mm-tabclose">
            关闭</div>
        <div id="mm-tabcloseall">
            全部关闭</div>
        <div id="mm-tabcloseother">
            除此之外全部关闭</div>
        <div class="menu-sep">
        </div>
        <div id="mm-tabcloseright">
            当前页右侧全部关闭</div>
        <div id="mm-tabcloseleft">
            当前页左侧全部关闭</div>
        <div class="menu-sep">
        </div>
        <div id="mm-exit">
            退出</div>
    </div>
</body>
</html>
