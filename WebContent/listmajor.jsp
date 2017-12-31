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
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

 
    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.jsp" class="site_title"><i class="fa fa-firefox"></i> <span>WELCOME!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic" style="margin: 0px; width: 180px;">
                <img src="images/user.png" alt="..." class="img-circle profile_img">
              </div>
              <br>
              <div class="profile_info" >
                <form  action="DangNhap" method="post">
                      
                        <center>${Users.getUserName() }</center>
                       
                
						
                    </form>  
                <span class="label label-danger" style="font-size:11px ;margin: 30px;">Admin</span>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
             <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a href="admin.jsp"><i class="fa fa-home"></i> Home </a>
                    
                  </li>
                  <li><a><i class="fa fa-cog"></i> Quản Lí tài khoản<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="DisplayUser?temp=${Users.getUserID() }">Danh sách tài khoản</a></li>
                      <li><a href="ThemTaiKhoanJSP?temp=${Users.getUserID() }">Thêm tài khoản</a></li>
                    </ul>
                  </li>
                 
                  
                   <li><a><i class="fa fa-folder-open"></i> Quản lí đề thi<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="DisplayExam?temp=${Users.getUserID() }">Danh sách đề thi</a></li>
                      <li><a href="ThemExamJSP?temp=${Users.getUserID() }">Thêm đề thi</a></li>
                     
                    </ul>
                  </li>
                 <li><a><i class="fa fa-folder-open"></i> Quản Lí tài khoản<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="DisplayQuestion?temp=${Users.getUserID() }">Danh sách Câu Hỏi</a></li>
                      <li><a href="ThemQuestionJSP?temp=${Users.getUserID() }">Thêm Câu Hỏi</a></li>
                    </ul>
                  </li>
                  
                    
                  <li><a href="adminllv.jsp"><i class="fa fa-calendar"></i> Lịch làm việc </a>
                    
                  </li>
                  
                   <li><a href="changepass.jsp"><i class="  fa fa-user"></i>Đổi mật khẩu</a>
                    
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
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.jsp">
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
                    <img src="images/user.png" alt=""><form  action="DangNhap" method="post">
                      
                        ${Users.getUserName() }
                       
                
						
                    </form>  
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li><a href="login.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
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
                        <span class="image"><img src="images/Khoa.png" alt="Profile Image" /></span>
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
                        <span class="image"><img src="images/hung.png" alt="Profile Image" /></span>
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
                        <span class="image"><img src="images/mui.png" alt="Profile Image" /></span>
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
                        <span class="image"><img src="images/huyen.png" alt="Profile Image" /></span>
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
                <h3>Danh Sách Ngành</h3>
              </div>

              
            </div>

            <div class="clearfix"></div>

           <div class="row" >
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel" class="responsive">
                
                  <div class="x_content" >
                   
                    <table id="datatable" class="table table-striped table-bordered">
                      <thead style="color: black; ">
                      <tr>
		         		<th>MajorID</th>
		         		<th>MajorName</th>
		         		
		         		<th></th>
		         		<th></th>
         			</tr>
                      </thead>
				<c:forEach items="${Majors}" var="Major"  >
      				<tr>
		         		<td>${Major.getMajorID()}</td>
		         		<td>${Major.getMajorName()}</td>
		         		
		         		<td><a href="Them_SuaUser?temp=${User.getUserID() }">
		         		
		         		Edit
		                   
		         		</td>
						<td><a href="XoaUser?temp=${User.getUserID() }">Delete</td>
         			</tr>
      		</c:forEach>

                      <tbody>
                       
                      </tbody>
                    </table>
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
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="vendors/jszip/dist/jszip.min.js"></script>
    <script src="vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="vendors/pdfmake/build/vfs_fonts.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
  </body>
</html>