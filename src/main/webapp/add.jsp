<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'addBook.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->


</head>

<style type="text/css">
    td {
        text-align: center;
    }

    #head {
        margin: 13px auto 15px auto;
        padding: 0px;
        text-align: left;
        width: 1200px;
        height: 1000px;
        color: #FFFFFF;
        overflow: hidden;
        background-size: cover;
        background-image: url(img/9ac3e08c2ee27ad2db304cb979b83724.jpg);

    }

    #c {
        width: 300px;
        height: 400px;
        background-size: cover;
    }

</style>

<body>
<div id="head">

    <center><h1>添加图书</h1></center>
    <table id="c" align="center">
    <hr style="height: 8px; "/>
    <form action="${pageContext.request.contextPath}/user/add">
        <h3>：1</h3><br>
        <tr>
            <td valign="middle" align="right">名字：</td>
            <td valign="middle" align="left"><input type="text" name="username" style="height: 30px; width: 207px"/></td>
        </tr>
        <tr>
            <td valign="middle" align="right">密码：</td>
            <td valign="middle" align="left"><input type="text" name="password" style="height: 30px; width: 207px"/></td>
        </tr>

        <tr>
            <td align="center" colspan="2"><input type="submit" value="添加提交"/>
        </tr>
    </form>
    </table>
</div>
</body>
</html>
