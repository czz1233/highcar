<!DOCTYPE html>
<html lang="en">
<HTML>
<meta charset="UTF-8">
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <LINK href="../static/css/Style.css" type="text/css" rel="stylesheet">
    <script language="javascript" src="../static/js/public.js"></script>
    <script language="javascript" src="../static/js/check.js"></script>
    <!-- 日期插件，使用jquery -->
    <script type="text/javascript" src="../static/jquery/jquery-1.4.2.js"></script>
    <link rel="stylesheet" href="../static/jquery/jquery.datepick.css" type="text/css">
    <script type="text/javascript" src="../static/jquery/jquery.datepick.js"></script>
    <script type="text/javascript" src="../static/jquery/jquery.datepick-zh-CN.js"></script>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../static/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
</HEAD>
<body>

<form id="userAction_save_do" name="Form1" action="quaryAndBook.do" method="post" >
    &nbsp;
    <table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
        <tr>
            <td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
                height="26">
                <strong><STRONG>查询列车信息</STRONG>
                </strong>
            </td>
        </tr>
        <tr>
            <td align="center" bgColor="#f5fafe" class="ta_01">
                始发地
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="start" value="" id="start"/>
            </td>
            <td align="center" bgColor="#f5fafe" class="ta_01">
                目的地
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="end" value="" id="end" class="bg"/>
            </td>
        </tr>

        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                出发时间
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <div class="controls input-append date form_datetime" data-date="2018-04-1" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
                    <input type="text" style="margin-top:24px;width:250px;" value="" name="startTime" class="bg"/>
                    <span class="add-on" style="margin-top:24px;"><i class="icon-remove"></i></span>
                    <span class="add-on" style="margin-top:24px;"><i class="icon-th"></i></span>
                </div>
                <input type="hidden" id="dtp_input1" value="" /><br/>

                <script type="text/javascript" src="../static/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
                <script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
                <script type="text/javascript" src="../static/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
                <script type="text/javascript" src="../static/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
                <script type="text/javascript">
                    $('.form_datetime').datetimepicker({
                        //language:  'fr',
                        weekStart: 1,
                        todayBtn:  1,
                        autoclose: 1,
                        todayHighlight: 1,
                        startView: 2,
                        forceParse: 0,
                        showMeridian: 1
                    });
                    $('.form_date').datetimepicker({
                        language:  'fr',
                        weekStart: 1,
                        todayBtn:  1,
                        autoclose: 1,
                        todayHighlight: 1,
                        startView: 2,
                        minView: 2,
                        forceParse: 0
                    });
                </script>
            </td>
        <tr>
            <td class="ta_01" style="WIDTH: 100%" align="center"
                bgColor="#f5fafe" colSpan="4">
                <button type="submit" id="userAction_save_do_submit" name="submit" onclick="Form1.submit()" value="&#30830;&#23450;" class="button_ok">
                    &#30830;&#23450;
                </button>

                <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
                <button type="reset" value="&#37325;&#32622;" class="button_cancel">&#37325;&#32622;</button>

                <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
                <INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
                <span id="Label1"></span>
            </td>
        </tr>
    </table>
</form>
<#if trainList??>
<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
    <TBODY>

    <tr>
        <td class="ta_01" align="center" bgColor="#afd1f3">
            <strong>车次列表</strong>
        </TD>
    </tr>
    <tr>
        <td class="ta_01" align="center" bgColor="#f5fafe">
            <table cellspacing="0" cellpadding="1" rules="all"
                   bordercolor="gray" border="1" id="DataGrid1"
                   style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 0px solid;  BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: separate ; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
                <tr
                        style=" FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
                    <td align="center" width="1%">
                        列车号
                    </td>
                    <td align="center" width="2%">
                        始发地
                    </td>
                    <td align="center" width="2%">
                        目的地
                    </td>
                    <td align="center" width=3%">
                        出发时间
                    </td>
                    <td width="3%" align="center">
                        到达时间
                    </td>
                    <td align="center" width="1%">
                        商务座
                    </td>
                    <td align="center" width="1%">
                        一等座
                    </td>
                    <td align="center" width="1%">
                        二等座
                    </td>
                    <td width="1%" align="center">
                        余票
                    </td>
                    <td width="1%" align="center">
                        查看
                    </td>
                </tr>
            <#list trainList as Train>
                <tr>
                    <td align="center">${Train.train_tno}</td>
                    <td align="center">${Train.start}</td>
                    <td align="center">${Train.end}</td>
                    <td align="center">${Train.startTime}</td>
                    <td align="center">${Train.endTime}</td>

                        <td align="center">${t_sums[Train_index]}</td>


                        <td align="center">${y_sums[Train_index]}</td>


                        <td align="center">${e_sums[Train_index]}</td>

                    <td align="center">${sums[Train_index]}</td>
                    <td align="center" style="HEIGHT: 22px">
                        <a href="quarybyTno.do?train_tno=${Train.train_tno}">
                            <img src="../static/images/button_view.gif" border="0" style="CURSOR: hand">
                        </a>
                    </td>
                </tr>
            </#list>
            </table>
        </td>
    </tr>
    </TBODY>
</table>
</#if>
</body>
</HTML>