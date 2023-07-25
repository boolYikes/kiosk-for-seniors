<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
    <title>index</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="resources/css/mycss.css" rel="stylesheet" type="text/css">
</head>

<body onclick="nextPage()">
    <div id="demo" class="carousel slide" data-ride="carousel" data-interval="3000">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src=resources/img/img1.png>
                <div class="carousel-caption">
                    <h3 style="color: rgb(139, 204, 241);">주문하시려면 터치해 주세요</h3>
                </div>
            </div>
            <div class="carousel-item">
                <img src="resources/img/img2.png">
                <div class="carousel-caption">
                    <h3 style="color: rgb(255, 255, 255);">주문하시려면 터치해 주세요</h3>
                </div>
            </div>
            <div class="carousel-item">
                <img src="resources/img/img3.png">
                <div class="carousel-caption">
                    <h3 style="color: rgb(180, 133, 3);">주문하시려면 터치해 주세요</h3>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
    <script>
        function nextPage() {
            window.location.href = "${cpath}/next";
        }
    </script>
</body>

</html>