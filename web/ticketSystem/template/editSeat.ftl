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
</HEAD>
<body>
<form id="userAction_save_do" name="Form1" action="editSeat.do" method="post">
    &nbsp;
    <table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
        <tr>
            <td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
                height="26">
                <strong><STRONG>修改列车座位信息</STRONG>
                  <input type="text" name="id" value="${seat.id}" hidden="hidden"/>
                </strong>
            </td>
        </tr>
        <tr>

            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                列车号
            </td>
            <td class="ta_01" bgColor="#ffffff" colspan="3">
                <input type="text" name="train_tno" value=${seat.train_tno} id="userAction_save_do_logonName"/>
            </td>
        </tr>
        <tr>
            <td align="center" bgColor="#f5fafe" class="ta_01">
                车厢号
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="seat_tno" value=${seat.seat_tno} id="logonPwd"/>
            </td>
        </tr>
        <tr>
            <td align="center" bgColor="#f5fafe" class="ta_01">
                座位类型
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <select  id="select"  name="seatType">
                    <option id="" name="seatType" value="商务座">商务座</option>
                    <option id="" name="seatType" value="一等座">一等座</option>
                    <option id="" name="seatType" value="二等座">二等座</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="center" bgColor="#f5fafe" class="ta_01">
                座位价格
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="seatPrice" value=${seat.seatPrice} />
            </td>
        </tr>
        <tr>
            <td align="center" bgColor="#f5fafe" class="ta_01">
                座位数量
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="seatNum" value=${seat.seatNum} />
            </td>
        </tr>
        <TR>
            <td align="center" colSpan="4" class="sep1">
                <img src="../static/images/shim.gif">
            </td>
        </TR>


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
</body>
</HTML>