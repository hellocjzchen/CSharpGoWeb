<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StringJoinAndSplit.aspx.cs"
    Inherits="CSharpGoWeb.StringJoinAndSplit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
<title>字符串分解与合并</title>
<link href="/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="/bootstrap/css/docs.css" rel="stylesheet">
<link href="/bootstrap/js/google-code-prettify/prettify.css" rel="stylesheet">

<script type="text/javascript" src="/js/jquery.js"></script>

</head>

<script type="text/javascript">
$( document ).ready(function() {
 
    $( "#splitButton" ).click(function( event ) {
        var strEmail =  $( "#inputEmail" ).val();
        var userName = strEmail.split("@")[0];
        var Url = strEmail.split("@")[1]; 
        $( "#inputPre" ).val(userName)
        $( "#inputAfter" ).val(Url)
    });
    
    $( "#ButtonMerge" ).click(function( event ) {
        var strTextUser2 =  $( "#TextUser2" ).val();
        var strTextUrl2 =  $( "#TextUrl2" ).val();
        
        var myList= new Array();
        myList.push(strTextUser2);
        myList.push(strTextUrl2);
 
        var strTextMergedEmail = myList.join("@");
        
        $( "#TextMergedEmail" ).val(strTextMergedEmail)
     
    });
 
});
</script>

<body>
    <h2>
        Email解析</h2>
    <div class="row">
        <div class="span6">
            <form class="form-horizontal">
            <fieldset>
                <legend>Email分解</legend>
                <div class="control-group">
                    <label class="control-label" for="input01">
                        待分解Email</label>
                    <div class="controls">
                        <input type="text" class="input-xlarge" id="inputEmail">
                        <p class="help-block">
                            Email</p>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="input01">
                        用户名</label>
                    <div class="controls">
                        <input type="text" class="input-xlarge" id="inputPre">
                        <p class="help-block">
                            Email前缀</p>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="input01">
                        网站</label>
                    <div class="controls">
                        <input type="text" class="input-xlarge" id="inputAfter">
                        <p class="help-block">
                            Email后缀</p>
                    </div>
                </div>
                <div class="form-actions">
                    <button class="btn btn-primary" type="button" id="splitButton">
                        分解</button>
                </div>
            </fieldset>
            </form>
        </div>
        <div class="span6">
            <form class="form-horizontal">
            <fieldset>
                <legend>Email合并</legend>
                <div class="control-group">
                    <label class="control-label" for="input01">
                        用户名</label>
                    <div class="controls">
                        <input type="text" class="input-xlarge" id="TextUser2">
                        <p class="help-block">
                            Email前缀</p>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="input01">
                        网站</label>
                    <div class="controls">
                        <input type="text" class="input-xlarge" id="TextUrl2">
                        <p class="help-block">
                            Email后缀</p>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="input01">
                            合并后Email</label>
                        <div class="controls">
                            <input type="text" class="input-xlarge" id="TextMergedEmail">
                            <p class="help-block">
                                Email</p>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <button class="btn btn-primary" type="button" id="ButtonMerge">
                        合并</button>
                </div>
            </fieldset>
            </form>
        </div>
    </div>
</body>
</html>
