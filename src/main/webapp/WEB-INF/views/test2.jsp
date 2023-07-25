<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="resources/img/apple-icon.png">
    <link rel="icon" type="image/png" href="resources/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        Paper Dashboard 2 by Creative Tim
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet"> -->
    <!-- CSS Files -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="resources/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
</head>

<body>
    <div class="wrapper">

        <div class="row big-row">

            <div class="sidebar col-lg-2" data-color="white" data-active-color="danger">

                <div class="sidebar-wrapper">
				    <ul class="nav">
				        <c:forEach items="${cate}" var="cate">
				            <c:set var="activeClass" value="${(param.category_seq eq cate.category_seq) ? 'active' : ''}" />
				            <li class="${activeClass}">
				                <a href="${cpath}/main?category_seq=${cate.category_seq}" class="cats">
				                    <p>${cate.category_name}</p>
				                </a>
				            </li>
				        </c:forEach>
				    </ul>
				</div>
            </div> <!-- sidebar div ends -->
            <div class="main-panel col-lg-7">
			    <div class="content">
			        <div class="row">
			            <c:forEach var="menu" items="${menu}" varStatus="status">
			                <div class="col-lg-3 col-md-6 col-sm-6 menu-box" data-toggle="modal" data-target="#options-modal">
			                    <div class="card card-stats">
			                        <div class="card-body">
			                            <div class="row">
			                                <div class="col-lg-1"></div>
			                                <div class="col-lg-12 col-md-4" class="menu-img">
			                                    <img src="${menu.menu_img}" alt="coffee" onclick="openModal(this.src)">
			                                </div>
			                                <div class="col-lg-1"></div>
			                            </div>
			                        </div>
			                        <div class="card-footer"></div>
			                    </div>
			                    <div class="row menu-name">
			                        <div class="col-lg-12">${menu.menu_name}</div>
			                    </div>
			                    <div class="row menu-price">
			                        <div class="col-lg-12">${menu.menu_price}원</div>
			                    </div>
			                </div>
			            </c:forEach>
			        </div>
			    </div>
			    <div class="row">
			        <div class="col-lg-2 text-right">
			            <a href="#" onclick="previousPage()">
			                <img src="resources/img/arrowleft.png" alt="left">
			            </a>
			        </div>
			        <div class="col-lg-8 text-center"></div>
			        <div class="col-lg-2 text-left">
			            <a href="#" onclick="nextPage()">
			                <img src="resources/img/arrowright.png" alt="right">
			            </a>
			        </div>
			    </div>
			</div>
            <!-- main panel ends-->

            <!-- orders panel -->
            <div class="container-fluid orders col-lg-3">

                <div class="row logo-reserved">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-7">
                    </div>
                    <div class="col-lg-1"></div>
                </div>

                <div class="row orders-title">
                    <span id="orders-title" style="margin-right: 160px;">선택한 상품</span>
                    <img class="logo_img" src="resources/img/logo.png" alt="logo" style="float: right;">
                </div>
                <hr>

                <div class="row orders-list-container">
                    <div class="col-lg-12 orders-list-container scroll-box">

                        <div class="row orders-list" id="orders-list-01">

                            <div class="col-lg-4 tags">
                                <div class="row" style="height:27px"></div>
                                <div class="row m-name">
                                    <div class="col-lg-14" style="font-size: 25px;"><span>스무디</span></div>
                                </div>
                                <div class="row m-options">
                                    <div class="col-lg-14" style="font-size: 20px;">
                                        ㄴ
                                        <span id="m01-options01">덜달게</span>
                                        <span>/</span>
                                        <span id="m01-options02">샷추가</span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="row" style="height:37px;"></div>
                                <div class="row" style="margin-left: 120px; margin-top: 20px;">
                                    <div class="col-lg-12">
                                        <form action="">
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">-</span>
                                                    <span class="input-group-text">1</span>
                                                    <span class="input-group-text">+</span>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                </div>

                <div class="footer check-out">
                    <hr>
                    <div class="row">
                        <div class="col-lg-4">
                            <span id="total" style="font-size:20px">총 결제금액 </span>
                        </div>
                        <div class="col-lg-4"></div>
                        <div class="col-lg-4" style="margin-top: 80px; text-align: right; font-size: 25px;">
                            20,000원
                        </div>
                        <input type="button" class="btn" style="background-color: #fff;color:#1c1c1b;font-size:29px; margin-left: 30px; margin-right: 30px; width: 195px; box-shadow: 0px 0px 2px 0px rgba(0, 0, 0, 0.325); margin-top: 20px;" value="주문취소">
                        <input type="button" class="btn" style="background-color: #ffdc00;color:#1c1c1b;font-size:29px; width: 195px; margin-top: 20px;" value="주문하기">
                    </div>
                </div>
            </div> <!-- orders panel ends-->

            <!-- OPTIONS MODAL -->
            <div class="modal fade" id="options-modal">
                <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">×</button>
                            <table class="table">
                                <tr>
                                    <td>
                                        <img id="modalImage" src="" alt="음료 이미지">
                                    </td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td>
                                                    <h4>자주색물</h4>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>깊고 진한 메가 MGC커피</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <span type="button" class="input-group-text">-</span>
                                                            <span class="input-group-text">1</span>
                                                            <span type="button" class="input-group-text">+</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <div class="row">
                                <span>
                                    <h6 style="color:#000000">무료 옵션</h6>
                                </span>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 card">
                                    <div class="card-body">기본</div>
                                </div>
                                <div class="col-lg-3 card">
                                    <div class="card-body">얼음조금</div>
                                </div>
                                <div class="col-lg-3 card">
                                    <div class="card-body">얼음많이</div>
                                </div>
                                <div class="col-lg-3 card">
                                    <div class="card-body">연하게</div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <span>
                                    <h6 style="color:#000000">유료 옵션</h6>
                                </span>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 card">
                                    <div class="card-body">샷추가</div>
                                </div>
                                <div class="col-lg-4 card">
                                    <div class="card-body">투샷추가</div>
                                </div>
                                <div class="col-lg-4 card">
                                    <div class="card-body">시럽추가</div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal"><span style="font-size:1.3rem">추 가</span></button>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="resources/js/core/jquery.min.js"></script>
    <script src="resources/js/core/popper.min.js"></script>
    <script src="resources/js/core/bootstrap.min.js"></script>
    <script src="resources/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <!--  Google Maps Plugin    -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <!-- Chart JS -->
    <script src="resources/js/plugins/chartjs.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="resources/js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="resources/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script><!-- Paper Dashboard DEMO methods, don't include it in your project! -->

    <script>
        function openModal(src) {
            var modal = document.getElementById("options-modal");
            var modalImage = document.getElementById("modalImage");

            modal.style.display = "block";	
            modalImage.src = src;	
        }
    </script>
</body>

</html>