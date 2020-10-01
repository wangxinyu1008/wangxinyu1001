<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/1
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
    <form method="post" action="/index">
    <span>资产编号：<input type="text" name="assetId"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span>资产类型：<select name="assetType">
        <option value="请选择类型">请选择类型</option>
        <option value="电子设备">电子设备</option>
         <option value="机械设备">机械设备</option>
         <option value="运输设备">运输设备</option>
    </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="查询"> </span>
    </form>
    <table border="1px" width="600px">
        <tr style="text-align: center" id="shou">
            <td>资产编号</td>
            <td>资产名称</td>
            <td>资产类型</td>
            <td>入库日期</td>
        </tr>
        <c:if test="${assets.size()>0}">
            <c:forEach items="${assets}" var="item">
                <tr style="text-align: center" class="bian">
                    <td>${item.assetid}</td>
                    <td>${item.assetname}</td>
                    <td>${item.assettype}</td>
                    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.infodate}" type="both"/></td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
    <form action="/add" method="post">
        <input type="submit" value="添加人员">
    </form>
</center>
</body>
</html>
