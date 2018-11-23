<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'showAll.jsp' starting page</title>

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

    #a {
        text-align: left;
        width: 600px;
        height: 10px;
    }

    #b {
        text-align: right;
        width: 300px;
        height: 5px;
    }

    #c {
        width: 1000px;
        height: 200px;
    }

    #d {
        background-color: black;
        padding: inherit;
        text-decoration: none;
        border: #000000;
        padding: calc();
    }
</style>
<body>


<div id="head">


    <h1 align="center">所有图书展示</h1>

    <hr
    "/>
    <table align="center" width="100" height="200">
        <tr>
            <td>
                <div id="a"><a href="${pageContext.request.contextPath}/add.jsp"><img src="img/add.png"
                                                                                      height="50"/></a></div>
            </td>
            <td>
                <div id="b">
                    <form method="post" action="${pageContext.request.contextPath}/getAll.do">
                       <input type="text" name="username" style="height: 30px; width: 207px"/><input type="submit" value="搜索"/>
                    </form>
                </div>
            </td>
        </tr>
    </table>
    <table id="c" align="center" border="5" cellpadding="4">
        <form method="post" action="${pageContext.request.contextPath}/deleteAll.do">
            <!--<tr><td align="center" colspan="5"><h2>图书管理表</h2></td></tr> -->
            <tr id="d">
                <td align="center">

                    <input type="submit" value="删除选中"/>
                </td>
                <td>
                </td>
                <td>
                    ID
                </td>
                <td>
                    <li><span>id</span></li>
                </td>
                <td>
                    <li>名字</li>
                </td>
                <td>
                    <li>密码</li>
                </td>
                <c:forEach items="${requestScope.k}" var="b">


            <tr>
                <td align="center">
                    <input type="checkbox" name="id" value="${b.id}"/>
                </td>
                <td><img src="img/user.png" height="30"/></td>
                <td>${b.id}</td>
                <td>${b.username}</td>
                <td>${b.password}</td>
                <td><a href="${pageContext.request.contextPath}/user/delete?id=${b.id}&curPage=${pageInfo.pageNum} ">删除</a>
                </td>
                <td><a href="${pageContext.request.contextPath}/user/getOne?id=${b.id}">修改</a></td>
            </tr>
            </c:forEach>
        </form>
    </table>
<%--    <table>
        <!--显示分页信息-->
        <tr>
        <span class="row">
            <!--文字信息-->
            <span class="col-md-6">
                当前第 ${pageInfo.pageNum} 页.总共 ${pageInfo.pages} 页.一共 ${pageInfo.total} 条记录
            </span>

            <!--点击分页-->
    <span class="col-md-6">
                <nav aria-label="Page navigation">
                    <ul class="pagination">

                        <li><a href="${pageContext.request.contextPath}/getAll.do?curPage=1">首页</a></li>

                        <!--上一页-->
                        <li>
                            <c:if test="${pageInfo.hasPreviousPage}">
                                <a href="${pageContext.request.contextPath}/getAll.do?curPage=${pageInfo.pageNum-1}" aria-label="Previous">
                                    <span aria-hidden="true">上一页</span>
                                </a>
                            </c:if>
                        </li>

                        <!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->
                        <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                            <c:if test="${page_num == pageInfo.pageNum}">
                                <li class="active"><a href="#">${page_num}</a></li>
                            </c:if>
                            <c:if test="${page_num != pageInfo.pageNum}">
                                <li><a href="${pageContext.request.contextPath}/getAll.do?curPage=${page_num}">${page_num}</a></li>
                            </c:if>
                        </c:forEach>

                        <!--下一页-->
                        <li>
                            <c:if test="${pageInfo.hasNextPage}">
                                <a href="${pageContext.request.contextPath}/getAll.do?curPage=${pageInfo.pageNum+1}"
                                   aria-label="Next">
                                    <span aria-hidden="true">下一页</span>
                                </a>
                            </c:if>
                        </li>

                        <li><a href="${pageContext.request.contextPath}/getAll.do?curPage=${pageInfo.pages}">尾页</a></li>
                    </ul>
                </nav>
            </span>

    </span>
    </tr>

    </table>--%>





</div>
</body>
</html>
