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
    <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">

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
                <span style="margin-left: 13px; font-size:15px;"> Văn Khoa</span>
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
                  <li><a href="student.jsp"><i class="fa fa-home"></i> Home </a>
                    
                  </li>
                  <li><a href="listexam.jsp"><i class="fa fa-cog"></i> Danh sách bài kiểm tra<span class="fa fa-chevron-down"></span></a>

                  </li>
                  <li><a href="listscore.jsp"><i class="fa fa-envira"></i>Điểm các  học kỳ<span class="fa fa-chevron-down"></span></a>

                  </li>
                 
                  
                   
                    
                  
               
                   <li><a href="adminllv.jsp"><i class="fa fa-calendar"></i> Lịch làm việc </a>
                    
                  </li>
                  <li><a href="Student.jsp"><i class="fa fa-envelope"></i> Hộp thư</a>
                    
                  </li>
                   <li><a href="changepassst.jsp"><i class="  fa fa-user"></i>Đổi mật khẩu</a>
                    
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
                    <img src="images/user.png" alt="">Văn Khoa
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
           
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
               
              </div>
            </div>

            <div class="row">
           

              <div class="col-md-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Networking Devices<small>15 minus</small></h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form class="form-horizontal form-label-left" style="color: black">
                      <div class="form-group" >
                        <h2><label>Câu 1:
                          <br>
                         
                        </label></h2>
                        <h5> The output is from a router in a large enterprise. From the utput, determine the role of the
router.</h5>
                        

                        <div class="col-md-9 col-sm-9 col-xs-12">                                             
                          <div class="radio">
                            <label><input type="radio" class="flat" name="iCheck"> A Core router.
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck"> The HQ Internet gateway router.
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck"> The WAN router at the central site.
                            </label>
                          </div>
                         <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck"> Remote stub router at a remote site
                            </label>
                          </div>
                        </div>
                      </div>


                       <div class="form-group">
                        <h2><label>Câu 2:
                          <br>
                         
                        </label></h2>
                        <h5> A network has been planned as shown. Which three statements accurately describe the
areas and devices in the network plan? (Choose three.)
router.</h5>
                        <div class="col-md-9 col-sm-9 col-xs-12"> 
                        <img src="images/cau2.png" alt="..." class="">
                      </div>
                        <div class="col-md-9 col-sm-9 col-xs-12">                                             
                            <div class="checkbox">
                            <label>
                              <input type="checkbox" class="flat" > Network Device A is a switch.
                            </label>
                          </div>
                            <div class="checkbox">
                            <label>
                              <input type="checkbox" class="flat" > Network Device B is a switch.
                            </label>
                          </div>
                            <div class="checkbox">
                            <label>
                              <input type="checkbox" class="flat" >  Network Device A is a hub.
                            </label>
                          </div>
                            <div class="checkbox">
                            <label>
                              <input type="checkbox" class="flat" > Network Device B is a hub.
                            </label>
                          </div>
                            <div class="checkbox">
                            <label>
                              <input type="checkbox" class="flat" > Area 1 contains a Layer 2 device.
                            </label>
                          </div>
                            <div class="checkbox">
                            <label>
                              <input type="checkbox" class="flat" > Area 2 contains a Layer 2 device.
                            </label>
                          </div>
                      </div>   
                    </div>

                       <div class="form-group" >

                        <h2><label>Câu 3:
                          <br>
                         
                        </label> <h5>A workstation has just resolved a browser URL to the IP address of a server. What protocol
will the workstation now use to determine the destination MAC address to be placed into
frames directed toward the server?</h5></h2>
                        

                        <div class="col-md-9 col-sm-9 col-xs-12">                                             
                          <div class="radio">
                            <label><input type="radio" class="flat" name="iCheck"> HTTP
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck"> DNS
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck"> DHCP
                            </label>
                          </div>
                         <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck"> RARP
                            </label>
                          </div>
                           <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck"> ARP
                            </label>
                          </div>
                        </div>
                      </div>  
                     
                   
                      <div class="form-group" >

                        <h2><label>Câu 4:
                          <br>
                         
                        </label> <h5>Refer to the exhibit.</h5></h2>
                         <div class="col-md-9 col-sm-9 col-xs-12"> 
                        <img src="images/cau5.png" alt="..." class="">
                      </div>

                        <div class="col-md-9 col-sm-9 col-xs-12">                                             
                          <div class="radio">
                            <label><input type="radio" class="flat" name="iCheck"> 10.168.10.99
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck"> 10.168.11.88

                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck"> A1:A1:A1:A1:A1:A1
                            </label>
                          </div>
                         <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck"> C3:C3:C3:C3:C3:C3
                            </label>
                          </div>
                           <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck">  D4:D4:D4:D4:D4:D4
                            </label>
                          </div>
                        </div>
                      </div>  
                      <div class="ln_solid"></div>
                       <div class="col-md-5 col-sm-5 col-xs-12 col-md-offset-1">
                          <button type="submit" class="btn btn-primary"data-toggle="modal"data-target="#myModal3">Submit</button>
                <!-- Modal --> 
                <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Kết quả</h4>
                      </div>
                      <div class="modal-body">
                        <form id="FormTimKiemNangCao" method="post" class="form-horizontal" action="">

                     
                      <div class="form-group">
                        <label class="col-sm-4 control-label" for="TimKiemTheo">Kết quả</label>
                        <div class="col-sm-5">
                         <label class="col-sm-4 control-label" for="TimKiemTheo">10/10</label>
                        </div>
                      </div>

                      
                                          
                                            <div class="form-group">
                        <label class="col-sm-4 control-label" for="TimKiemTheo">Ý kiến</label>
                        <div class="col-sm-5">
                          <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                                      
                    </form>
                                          <div class="modal-footer">
                       
                       <a href="student.jsp"><button type="button" class="btn btn-primary">Kết thúc</button></a> 
                      </div>
                                        </div>
                                      </div>
                                    </div>
                            </div>
                          <button type="submit" class="btn btn-succe">Refresh </button>
                        
                        </div>

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
    <script src="vendors/iCheck/icheck.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
  </body>
</html>