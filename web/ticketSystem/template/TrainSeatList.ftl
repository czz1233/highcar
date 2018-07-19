<!DOCTYPE html>
<html lang="en">
<HTML>
<meta charset="UTF-8">
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="../static/css/Style.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="../static/js/public.js"></script>
    <script type="text/javascript" src="../static/js/jquery-1.8.3.js"></script>
</HEAD>
<body>
<br>
<form id="Form1" name="Form1" action="" method="post">
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
                        <td align="center" width="2%">
                            列车号
                        </td>
                        <td width="2%" align="center">
                            车厢号
                        </td>
                        <td align="center" width="2%">
                            座位类型
                        </td>
                        <td align="center" width="2%">
                            座位价格
                        </td>
                        <td align="center" width="2%">
                            车厢座位数量
                        </td>
                        <td width="1%" align="center">
                            订票
                        </td>
                    </tr>
                  <#list seatList as s>
                    <tr>
                        <td align="center">${s.train_tno}</td>
                        <td align="center">${s.seat_tno}</td>
                        <td align="center">${s.seatType}</td>
                        <td align="center">￥:${s.seatPrice}</td>
                        <td align="center">${s.seatNum}</td>
                        <td align="center" style="HEIGHT: 22px">
                            <a href="bookTrainseat.do?id=${s.id}">
                                <img src="../static/images/i_ok.gif" onclick="Form1.submit()" width="16" height="16" border="1" style="CURSOR: hand">
                            </a>
                        </td>
                    </tr>
                </#list>

                </table>
            </td>
        </tr>



        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                    <tr>
                        <td width="100" height="22" align="center" bgColor="#f5fafe"
                            class="ta_01">
                        </td>
                        <td class="ta_01" bgColor="#ffffff">
                            <font face="宋体" color="red"> &nbsp;</font>
                        </td>
                        <td align="right" bgColor="#ffffff" class="ta_01"><br><br></td>
                        <td align="right" bgColor="#ffffff" class="ta_01">
                          <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
                          <INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
                          <span id="Label1"></span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </TBODY>
    </table>
</form>
</body>
</HTML>

