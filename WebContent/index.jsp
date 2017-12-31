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
                <span style="margin-left: 10px; font-size:13px;">Nguyễn Thị Yến Nhi</span>
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
                  <li><a href="index.jsp"><i class="fa fa-home"></i> Home </a>
                    
                  </li>
                  <li><a><i class="fa fa-cog"></i> Quản Lí tài khoản<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form.jsp">Danh sách tài khoản</a></li>
                      <li><a href="form_advanced.jsp">Thêm tài khoản</a></li>
                      <li><a href="form_validation.jsp">Sửa tài khoản</a></li>
                      <li><a href="form_wizards.jsp">Xóa tài khoản</a></li>
                    </ul>
                  </li>
                 
                  
                   <li><a><i class="fa fa-folder-open"></i> Quản lí đề thi<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="general_elements.jsp">Danh sách đề thi</a></li>
                      <li><a href="media_gallery.jsp">Thêm đề thi</a></li>
                      <li><a href="typography.jsp">Sửa đề thi</a></li>
                      <li><a href="icons.jsp">Xóa đề thi</a></li>
                    </ul>
                  </li>
                     <li><a><i class="fa fa-book"></i> Quản lí cấp độ<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="general_elements.jsp">Danh sách các cấp độ</a></li>
                      <li><a href="media_gallery.jsp">Thêm cấp độ</a></li>
                      <li><a href="typography.jsp">Sửa cấp độ</a></li>
                      <li><a href="icons.jsp">Xóa cấp độ</a></li>
                    </ul>
                  </li>
                   <li><a><i class="fa fa-calendar"></i> Lịch làm việc </a>
                    
                  </li>
                  <li><a><i class="fa fa-envelope"></i> Hộp thư đến </a>
                    
                  </li>
                   <li><a><i class="  fa fa-user"></i> Tài khoản cá nhân<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="general_elements.jsp">Xem thông tin</a></li>
                      <li><a href="media_gallery.jsp">Đổi mật khẩu</a></li>
                    </ul>
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
                    <img src="images/user.png" alt="">Yến Nhi
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
<div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>HOME</h3>
              </div>

              
            </div>
            
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>TRẮC NGHIỆM ONLINE</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                       
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">


                    <!-- start project list -->
                    <table class="table table-striped projects">
                      <thead>
                        <tr>
                          <th style="width: 1%">#</th>
                          <th style="width: 20%">Tên bài trắc nghiệm</th>
                          <th>Thí sinh</th>
                          <th>Số lượng thí sinh đã làm bài</th>
                          <th></th>
                          <th>Trạng thái</th>
                        
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>#</td>
                          <td>
                            <a>Kiến trúc máy tính</a>
                            <br />
                            <small>Ngày 10-11-2017</small>
                          </td>
                          <td>
                            <ul class="list-inline">
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                            </ul>
                          </td>
                          <td class="project_progress">
                            <div class="progress progress_sm">
                              <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="95"></div>
                            </div>
                            <small>95% Complete</small>
                          </td>
                          <td><td>
                            <button type="button" class="btn btn btn-xs">Hết hạn</button>
                          </td></td>
                         
                        </tr>
                        <tr>
                          <td>#</td>
                          <td>
                            <a>Lập trình web</a>
                            <br />
                            <small>Ngày 22-12-2017</small>
                          </td>
                          <td>
                            <ul class="list-inline">
                             
                            </ul>
                          </td>
                          <td class="project_progress">
                            <div class="progress progress_sm">
                              <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="0"></div>
                            </div>
                            <small>0% Complete</small>
                          </td>
                          <td>

                          <td>
                          
                            <button type="button" class="btn btn-info btn-xs">Sắp diễn ra</button>
                             </td>
                        
                        </td>
                          
                        
                        </tr>
                        <tr>
                          <td>#</td>
                          <td>
                            <a>Mạng máy tính căn bản</a>
                            <br />
                            <small>Ngày 29-10-2017</small>
                          </td>
                          <td>
                            <ul class="list-inline">
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                            </ul>
                          </td>
                          <td class="project_progress">
                            <div class="progress progress_sm">
                              <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="100"></div>
                            </div>
                            <small>100% Complete</small>
                          </td>
                          <td><td>
                            <button type="button" class="btn btn-success btn-xs">Success</button>
                          </td></td>
                         
                        </tr>
                        <tr>
                          <td>#</td>
                          <td>
                            <a>Lập trình hướng đối tượng</a>
                            <br />
                            <small>Ngày 20-9-2017</small>
                          </td>
                          <td>
                            <ul class="list-inline">
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                            </ul>
                          </td>
                          <td class="project_progress">
                            <div class="progress progress_sm">
                              <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="60"></div>
                            </div>
                            <small>60% Complete</small>
                          </td>
                          
                          <td>
                            <td>
                            <button type="button" class="btn btn btn-xs">Hết hạn</button>
                          </td>
                          </td>
                        </tr>
                        <tr>
                          <td>#</td>
                          <td>
                            <a>Nhập môn nhập trình</a>
                            <br />
                            <small>Ngày 20-10-2017</small>
                          </td>
                          <td>
                            <ul class="list-inline">
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                            </ul>
                          </td>
                          <td class="project_progress">
                            <div class="progress progress_sm">
                              <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="100"></div>
                            </div>
                            <small>100% Complete</small>
                          </td>
                         
                          <td>
                             <td>
                            <button type="button" class="btn btn-success btn-xs">Hoàn thành</button>
                          </td>
                          </td>
                        </tr>
                        <tr>
                          <td>#</td>
                          <td>
                            <a>Kỹ thuật lập trình</a>
                            <br />
                            <small>Ngày 23-06-2018</small>
                          </td>
                          <td>
                            <ul class="list-inline">
                            </ul>
                          </td>
                          <td class="project_progress">
                            <div class="progress progress_sm">
                              <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="0"></div>
                            </div>
                            <small>0% Complete</small>
                          </td>
                        
                          <td>
                             <td>
                            <button type="button" class="btn btn-info btn-xs">Sắp diễn ra</button>
                          </td>
                          </td>
                        </tr>
                        <tr>
                          <td>#</td>
                          <td>
                            <a>Hệ điều hành</a>
                            <br />
                            <small>Created 01.01.2015</small>
                          </td>
                          <td>
                            <ul class="list-inline">
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                            </ul>
                          </td>
                          <td class="project_progress">
                            <div class="progress progress_sm">
                              <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="87"></div>
                            </div>
                            <small>87% Complete</small>
                          </td>
                          <td><td>
                            <button type="button" class="btn btn btn-xs">Hết hạn</button>
                          </td></td>
                          
                        </tr>
                        <tr>
                          <td>#</td>
                          <td>
                            <a>Nhập môn Logic học</a>
                            <br />
                            <small>Ngày 20-11-2017</small>
                          </td>
                          <td>
                            <ul class="list-inline">
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                            </ul>
                          </td>
                          <td class="project_progress">
                            <div class="progress progress_sm">
                              <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="77"></div>
                            </div>
                            <small>77% Complete</small>
                          </td>
                          <td><td>
                            <button type="button" class="btn btn-danger btn-xs">Sắp hết hạn</button>
                          </td></td>
                        
                        </tr>
                        <tr>
                          <td>#</td>
                          <td>
                            <a>Công nghệ phần mềm</a>
                            <br />
                            <small>Ngày 01-01-2017</small>
                          </td>
                          <td>
                            <ul class="list-inline">
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                              <li>
                                <img src="images/user.png" class="avatar" alt="Avatar">
                              </li>
                            </ul>
                          </td>
                          <td class="project_progress">
                            <div class="progress progress_sm">
                              <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="100"></div>
                            </div>
                            <small>100% Complete</small>
                          </td>
                         <td> <td>
                            <button type="button" class="btn btn-success btn-xs">Hoàn thành</button>
                          </td></td>
                          
                        </tr>
                      </tbody>
                    </table>
                    <!-- end project list -->

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- page content -->
        
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
    
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
  </body>
</html>