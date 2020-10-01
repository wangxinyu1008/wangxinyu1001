<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/30
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
    <form method="post" action="/doadd">
    <table width="400px" border="1">
        <tr>
            <td align="center">资产编号：&nbsp;&nbsp;&nbsp;<input type="text" name="assetid" class="assetid"></td>
        </tr>
        <tr>
            <td align="center">资产名称：&nbsp;&nbsp;&nbsp;<input type="text" name="assetname" class="assetname"></td>
        </tr>
        <tr>
            <td align="center">资产类型：&nbsp;&nbsp;&nbsp; <select name="assettype" class="assettype" style="width: 174px">
                <option value="请选择">请选择</option>
                <option value="电子设备">电子设备</option>
                <option value="机械设备">机械设备</option>
                <option value="运输设备">运输设备</option>
            </select></td>
        </tr>

        <tr>
            <td align="center">入库日期：&nbsp;&nbsp;&nbsp;<input type="text" name="infodate" class="infodate"></td>
        </tr>
        <tr align="center">
            <td colspan="2"><input type="submit" value="添加" class="add"></td>
        </tr>
    </table>
    </form>
</center>
<script>
    $(document).ready(function () {
        $(".add").click(function () {
            var assetid=$(".assetid").val();
            var assetname=$(".assetname").val();
            var assettype=$(".assettype").val();
            var infodate=$(".infodate").val();
            if(assetid==""||assetname==""||assettype=="请选择"||infodate==""){
                alert("请填写完整信息")
                return false;
            }
        })
    })
</script>
</body>
</html>
