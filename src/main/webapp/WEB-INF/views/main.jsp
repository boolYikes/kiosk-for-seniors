<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>main</title>
    <meta charset="utf-8" />
    <metaname="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="resources/css/mycss.css" rel="stylesheet" type="text/css">
  </head>
  <body>
   
   
   <c:forEach items="${cate}" var="cate">
	<button value="${cate.category_seq}">${cate.category_name}</button>
   </c:forEach>
   <br>
  
   <h2>메뉴</h2>
    <table border="1px solid 1px">
        <c:forEach var="menu" items="${menu}">
            <tr>
                <td><img src="${menu.menu_img}" style="width: 15%; height: 15%;"></td>
                <td>${menu.menu_name}</td>
                <td>${menu.menu_price}</td>
                <td>${menu.menu_desc}</td>
            </tr>
        </c:forEach>
    </table>
    <script type="text/javascript">
		    
    </script>
  </body>
</html>
