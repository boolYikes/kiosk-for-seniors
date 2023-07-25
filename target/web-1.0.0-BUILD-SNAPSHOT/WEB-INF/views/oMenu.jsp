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
    	어르신용 페이지
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="resources/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
    <link rel="stylesheet" href="resources/css/modal.css"/>
</head>

<style>
.voice_area{
	height : 100px;
	border: 3px;
	background-color : #ffffff1c;
	border-radius : 10px;
	align-items: center;
	flex-direction:row;
	justify-content: center;
	box-shadow : -1px 1px 1px 2px rgba(0,0,0,0.1);
	margin-bottom: 5px;
}
.voice_icon{
	background-color:#1c1c1b;
	color:#ffdc00;
	flex:content;
	height:100%;
	border-top-left-radius:10px;
	border-bottom-left-radius:10px;
	z-index:9999;
	transition: background-color 2s ease;}
.talk{
	flex:content;
	height:100%;
	border-radius:10px;
	flex-direction:column;
	display:flex;
	justify-content:center;
	vertical-align:middle;}
	.talk span{
		text-align:center;
		font-size:1.2rem !important;
	}

</style>

<body>
    <div class="wrapper">

        <div class="row big-row">

            <div class="sidebar col-lg-2" data-color="white" data-active-color="danger">

                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <c:forEach items="${cate}" var="cate">
                            <c:set var="activeClass" value="${(param.category_seq eq cate.category_seq) ? 'active' : ''}" />
                            <li class="${activeClass}">
                                <a href="${cpath}/omain?category_seq=${cate.category_seq}" id="cat${cate.category_seq}">
                                    <p>${cate.category_name}</p>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div> <!-- sidebar div ends -->
            
            <div class="main-panel col-lg-7">
			    <div class="content">
			    	<div class= "row voice_area">
			    		<div class = "col-lg-3 voice_icon"> 
				    		<div class="wrap-pulse talk">
				    			<span>음성인식터치!</span>
							</div>	    	
			    		</div>
			    		<div class = "col-lg-9 voice_help"></div>
			    	</div>
			    	<div class = "row swiper_row">
			        	<div class="swiper">
			            	<div class="swiper-wrapper">
			               		<c:forEach var="menuGroup" items="${menuGroups}">
			                   		<div class="swiper-slide">
			                        	<div class="row">
			                            	<c:forEach var="menu" items="${menuGroup}" varStatus="status">
			                                	<div class="col-lg-4 col-md-6 col-sm-6 menu-box" data-toggle="modal" data-target="#options-modal">
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
			                        	<div class="swiper-button-next"></div>
			                        	<div class="swiper-button-prev"></div>
			                    	</div>
			                	</c:forEach>
			            	</div>
			        	</div>
			        </div>
			    </div>
			</div>

            <!-- 페이지 업 / 다운 버튼 있던 구간 -->
        
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
        </div>
        </div>
        <!-- orders panel ends-->

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
    
    <!-- MODALS -->
     <div class="md-container cont01">
        <div class="md-dg">
            <div class="md-header row">
                <!-- 여기의 div height는 안의 h1 폰트 크기로 결정됨 -->
                <div class="col-lg-12">
                    <span>메뉴 확인</span>
                </div>
            </div>
            <div class="md-body row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row check_menu">
                                <p>찾으시는 메뉴가 맞습니까?</p>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <img class="md-menu-img" src="" alt="the_image">
                            <img class="md-body-logo" src="https://img.79plus.co.kr/megahp/common/img/bi_logo1.png">
                        </div>
                        <div class="col-lg-12">
                            <div class="row check_menu_name">체리콕</div>
                            <div class="row check_menu_price">0000원</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="md-footer conf-recog row">
                <div class="col-lg-6">
                    아니오
                </div>
                <div class="col-lg-6">
                    예
                </div>
            </div>
        </div>
    </div>
    <!-- 두번째 모달 (상세페이지) -->
    <div class="md-container cont02">
        <div class="md-dg">
            <div class="md-header">
                <div class="row">
                    <div class="col-lg-12">
                        <span>상세주문모달</span>
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

    <!-- swift -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

    <script>
    // 결정 (터치) 
    // 현재 대화 문맥임 중요//
    // "종류, 메뉴, 옵션"
    let convContext = "메뉴";
    /////////////////////
    function toggleModal1() {
        if ($(".cont02").hasClass("md-on")) {
            $(".cont02").toggleClass("md-on");
        }
        $(".cont01").toggleClass("md-on");
    }

    function toggleModal2() {
        if ($(".cont01").hasClass("md-on")) {
            $(".cont01").toggleClass("md-on");
        }
        $(".cont02").toggleClass("md-on");
    }

    
        function openModal(src) {
            var modal = document.getElementById("options-modal");
            var modalImage = document.getElementById("modalImage");

            modal.style.display = "block";
            modalImage.src = src;
        }

        var swiper = new Swiper('.swiper', {
            direction: 'horizontal',
			navigation: {
            		nextEl: '.swiper-button-next',
            		prevEl: '.swiper-button-prev',
            		    }
        });

        // 음성인식용
        function whatsYourPoison(convContext){
        	$(".voice_help").text("원하시는 "+convContext+"을(를) 말씀해주세요.");
        	$.ajax({
        		url:"http://127.0.0.1:5000/listen",
        		success:function(rsps){
        			console.log(rsps.answer + "문맥:"+rsps.convContext);
        			convContext = rsps.convContext;
        			switch convContext:
        				case "종류":
        					$("#cat"+rsps.answer).trigger("click");
        					whatsYourPoison(convContext);
        					break;
        				case "메뉴":
        					$.ajax({
		        				url:"${cpath}/getCorrespMenu",
		        				data:{menu_seq:rsps.answer},
		        				success:function(resultMenu){
				        			if(resultMenu !== null || resultMenu !== undefined){
					        			$(".check_menu_name").text(resultMenu.menu_name);
					        			$(".check_menu_price").text(resultMenu.menu_price+"원");
					        			$(".md-menu-img").attr("src", resultMenu.menu_img);
				        				toggleModal1();
					        			$(".voice_icon").css("z-index", 0);
				        			}else{
				        				console.log("Can't fetch menu");
				        			}
		        				},
		        				error:function(xhr, error){
		        					console.log(error);
		        				}
		        			});
        					break;
        				case "옵션":
        					
        					break;
        		},
        		error:function(xhr, error){
        			console.log(error);
        		}
        		
        	});
        }
        
        // 아니오 눌렀을때
        $(".conf-recog div:first-child").on("click", function(){
        	toggleModal1();
        	whatsYourPoison();
        });
        // 예 눌렀을때
        $(".conf-recog div:last-child").on("click", function(){
        	toggleModal1();
        	whatsYourPoison();
        });
        
        // 음성인식용
        $(".voice_icon").on("click", function(){
        	whatsYourPoison();
        });
        setInterval(function(){
        	let col1 = "#1c1c1b";
        	let col2 = "#ffdc00";
        	if($(".voice_icon").css("background-color") == "#1c1c1b"){
        		$(".voice_icon").css("background-color", "#ffdc00");
        	}else if($(".voice_icon").css("background-color") == "#ffdc00"){
  				$(".voice_icon").css("background-color", "#1c1c1b");      		
        	}
        }, 2000);
    </script>
</body>

</html>
