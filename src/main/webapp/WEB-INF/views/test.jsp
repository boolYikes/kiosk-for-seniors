<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/style.css">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <div class="menuContainer">
            <div class="menu">
                <c:forEach items="${cate}" var="cate">
                    <a href="${cpath}/main?category_seq=${cate.category_seq}" class="menuactive"><span>${cate.category_name}</span></a>
                </c:forEach>
            </div>

            <div class="imageContainer">
                <table>
                    <c:forEach var="menu" items="${menu}" varStatus="status">
                        <c:if test="${status.index % 4 == 0}">
                            <tr>
                        </c:if>
                        <td>
                            <div>
                                <button class="menu_btn" value="coffee">
                                    <img src="${menu.menu_img}" style="width: 100%; height: 100%;">
                                    <p>${menu.menu_name}</p>
                                    <p>${menu.menu_price}원</p>
                                </button>
                            </div>
                        </td>
                        <c:if test="${status.index % 4 == 3 or status.last}">
                            </tr>
                        </c:if>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</body>

</html>