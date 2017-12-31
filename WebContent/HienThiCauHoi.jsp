<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>QUIZ DEMO </title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
 
    <!-- bootstrap-daterangepicker -->
  
    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-firefox"></i> <span>WELCOME!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic" style="margin: 0px; width: 180px;">
                <img src="images/user.png" alt="..." class="img-circle profile_img">
              </div>
              <br>
              <div class="profile_info" >
               <center>${Users.getUserName() }</center>
                <span class="label label-danger" style="font-size:11px ;margin: 30px;">Student</span>
              </div>
            </div>
            <!-- /menu profile quick info -->


            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
               <h3>General</h3>
                <ul class="nav side-menu">
             
                   
                   <li><a href="DangNhap?TaiKhoan=${Users.getUserName() }&MatKhau=${Users.getUserPass() }"><i class="fa fa-home"></i> Home </a>
                    
                  </li>
                  <li><a href="DisplayExamChoStudent?temp=${Users.getUserID() }"><i class="fa fa-cog"></i> Danh sách bài kiểm tra<span class="fa fa-chevron-down"></span></a>

                  </li>
                  <li><a href="DisplayResult?temp=${Users.getUserID()}"><i class="fa fa-envira"></i>Điểm các môn<span class="fa fa-chevron-down"></span></a>
					
                  </li>
                              
               
                   <li><a href="DoiPass?temp=${Users.getUserID() }"><i class="  fa fa-user"></i>Đổi mật khẩu</a>
                    
                  </li>
                    
                </ul>
              </div>
              

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/user.png" alt="">${Users.getUserName() }
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">99+</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="images/Khoa.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>Văn Khoa</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Đã nộp đề thi môn kiến trúc máy tính......
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/hung.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>Kiều Hưng</span>
                          <span class="time">5 mins ago</span>
                        </span>
                        <span class="message">
                         Nay t mập như con heo rồi m
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/mui.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>Tùng Núi</span>
                          <span class="time">12 mins ago</span>
                        </span>
                        <span class="message">
                          Mai a khao học bổng nè
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/huyen.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>Hoàng Huyền</span>
                          <span class="time">27 mins ago</span>
                        </span>
                        <span class="message">
                          Mai chị khao học bổng nè
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
         <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Bài thi</h3>
              </div>

              
            </div>

            <div class="clearfix"></div>

           <div class="row" >
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel" class="responsive">
                
                  <div class="x_content" >
                  
                  
                  
                  	<form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="BatDauThi" method="post">
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tên Bài Thi: <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="${BaiThis.get(0).getTenBaiThi() } "disabled type="text" name="TenBaiThi" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                
						<div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Thời gian Thi: <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input value="${BaiThis.get(0).getTime() } Phút "disabled type="text" name="Time" required="required" class="form-control col-md-7 col-xs-12">
                            
                             <center> <div id="clockdiv" style="font-size:12pt;color:red;margin-top:10px">
  
  <div>
    <span class="minutes">  </span>  Minutes  <span class="seconds"></span>  Seconds
  </div>
</div></center>
                        </div>
                      </div>
                    </form>
                    
                 <form name="LamBai" action="DoTest" method="post">
				   				
      			</br>
      					<input hidden type="radio" checked  value="${BaiThis.get(0).getMaBaiThi() }" name="tenbaithi"/></br>
		         		<table id="datatable" class="table table-striped jambo_table bulk_action" border="1">
                        <thead>
                         <tbody>
				<input hidden type="radio" checked  value="${ExamID }" name="examid"/></br>
				<input hidden type="radio" checked  value="${Users.getUserID() }" name="userID"/></br>
				
      		<c:forEach items="${BaiThis}" var="BaiThi"  >
      				<tr class="even pointer">
      				 Câu hỏi :  ${BaiThi.getNoiDung() }</br>
		         	
		         		<input type="radio" value="1" name="${BaiThi.getQuestionID()}"/>  A:	${BaiThi.getOptionA() }</br>
		         		<input type="radio" value="2" name="${BaiThi.getQuestionID()}" /> B:	${BaiThi.getOptionB() }</br>
		         		<input type="radio" value="3" name="${BaiThi.getQuestionID()}" /> C:	${BaiThi.getOptionC() }</br>
		         		<input type="radio" value="4" name="${BaiThi.getQuestionID()}" /> D:	${BaiThi.getOptionD() }</br>
         			</tr>
      		</c:forEach>
      		</tbody>
      	<input type="submit"  name ="DoTest" value ="Nộp Bài" />
      			
					 	</form>
					 
                     
                 
                  </div>
                </div>
              </div>

              

          

              

             

              
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Design by Nhi Xinh Đẹp <a href="https://www.facebook.com/sandykio.zih">Yến Nhi</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
   <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    
    <!-- NProgress -->
  
    <!-- bootstrap-progressbar -->
    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
    <script>
    function getTimeRemaining(endtime) {
  var t = Date.parse(endtime) - Date.parse(new Date());
  var seconds = Math.floor((t / 1000) % 60);
  var minutes = Math.floor((t / 1000 / 60) % 60);
 
 
  return {
    'total': t,
    'minutes': minutes,
    'seconds': seconds
  };
}

function initializeClock(id, endtime) {
  var clock = document.getElementById(id);
  var minutesSpan = clock.querySelector('.minutes');
  var secondsSpan = clock.querySelector('.seconds');

  function updateClock() {
    var t = getTimeRemaining(endtime);

    minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
    secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

    if (t.total <= 0) {
      clearInterval(timeinterval);
      alert("Đã Hết Thời Gian Bạn Vui Lòng Ấn Nút Nộp Bài");
      document.forms["LamBai"].submit();
     
     
    }
  }

  updateClock();
  var timeinterval = setInterval(updateClock, 1000);
}

var deadline = new Date(Date.parse(new Date()) +  ${BaiThis.get(0).getTime() }*60 * 1000);
initializeClock('clockdiv', deadline);
</script>
  </body>
</html>