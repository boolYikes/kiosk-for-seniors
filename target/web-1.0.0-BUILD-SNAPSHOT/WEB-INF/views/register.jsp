<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>choice</title>
    <meta charset="utf-8" />
    <metaname="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="resources/css/mycss.css" rel="stylesheet" type="text/css">
  </head>
  <style>
    html,body,div, video {margin:0;padding:0;}
    body {
      padding:0px, 0px, 0px, 0px; 
      margin:0px, 0px, 0px, 0px;
      overflow:hidden; 
      background-color:#000; 
    }
  .container video{
    width: 100%; 
    height: 1080px;
    overflow: hidden;
    margin: 0px auto;
    position: relative;
    object-fit: cover;
    z-index : -1;
    opacity: 0.3;
  }
   .regi-logo{
    top: 10%;
	text-align : center;
    position : absolute;
   }

	.regi-btn{
	position : absolute;
	top : 35%;
	
	}



  </style>


  <body>
    <div class="container">
      <video width="100%" height="auto" autoplay loop muted controls>
        <source src="resources/video/coffee_-_46989 (1080p).mp4" type="video/mp4">
      </video>
      <section class="content-select">
      <center>
        <img class="regi-logo" src="https://img.79plus.co.kr/megahp/common/img/logo.png" />
      </center>
        <div class = "regi-btn">
          <button type="button" class="regi-eat" onclick="location.href='${cpath}/main?category_seq=1'">
          <img src="resources/img/shop.png" style="width: 50%; height: 60%; margin: 10px" />
          <p>매장</p>
          </button>
          <button type="button" class="regi-togo" onclick="location.href='${cpath}/omain?category_seq=1'">
          <img src="resources/img/takeout.png" style="width: 50%; height: 60%; margin: 10px"/>
          <p>포장</p>
          </button>
        </div>
      </section> 
    </div>
  </body>
</html>
