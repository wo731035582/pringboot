<%@ page pageEncoding="UTF-8" contentType="text/html;" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'updateBook.jsp' starting page</title>

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
    table {
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
    }

</style>
<body>
<div id="head">
    <br>
    <h1 align="center">图书信息修改</h1>
    <hr>
    <!-- <br> -->
    <br>

    <form action="${pageContext.request.contextPath }/user/update.do" method="post">
        <table id="c" align="center">


            <tr>
                <td valign="middle" align="right">
                    书名:
                </td>
                <td valign="middle" align="left">
                    <input type="hidden" class="inputgri" name="id" value="${requestScope.map.id}"/>
                    <input type="text" class="inputgri" name="username" value="${requestScope.map.username}"
                           style="height: 30px; width: 207px"/>
                </td>

            </tr>
            <tr>
                <td valign="middle" align="right">
                    密码:
                </td>
                <td valign="middle" align="left">
                    <input type="text" class="inputgri" name="password" value="${requestScope.map.password}"
                           style="height: 30px; width: 207px"/>
                </td>
            </tr>

            <tr>
                <td align="right" colspan="2"><input type="submit" class="button" value="修改"
                                                     style="height: 41px; width: 78px; "/></td>
            </tr>
        </table>


    </form>
</div>
</body>
</html>
