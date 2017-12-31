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
                <img src="images/user.png" alt="Nhi xinh" class="img-circle profile_img">
              </div>
              <br>
              <div class="profile_info" >
                <span style="margin-left: 12px; font-size:13px;">Văn Dũng</span>
                <span class="label label-danger" style="font-size:11px ;margin: 30px;">Teacher</span>
              </div>
            </div>
            <!-- /menu profile quick info -->


            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a href="teacher.jsp"><i class="fa fa-home"></i> Home </a>
                    
                  </li>
                  <li><a><i class="fa fa-cog"></i> Quản lí câu hỏi<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="listquestion.jsp">Danh sách câu hỏi</a></li>
                      <li><a href="addquestion.jsp">Thêm câu hỏi</a></li>
                      <li><a href="suaquestion.jsp">Sửa câu hỏi</a></li>
                      <li><a href="deletequestion.jsp">Xóa câu hỏi</a></li>
                    </ul>
                  </li>
                 
                  
                   <li><a><i class="fa fa-folder-open"></i> Quản lí đề thi<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="listexamx.jsp">Danh sách đề thi</a></li>
                      <li><a href="add_examx.jsp">Thêm đề thi</a></li>
                      <li><a href="suaexamx.jsp">Sửa đề thi</a></li>
                      <li><a href="deleteexamx.jsp">Xóa đề thi</a></li>
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
                    <img src="images/user.png" alt="">Văn Dũng
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
                <h3>Quản Lí Câu Hỏi</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Tìm!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
              
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel" class="responsive">
                  <div class="x_title">
                    <h2>Sửa Câu Hỏi </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                      <p>Click vào một câu hỏi cần sửa</p>
                   <div class="table-responsive">
                      <table id="datatable" class="table table-striped jambo_table bulk_action"border="1">
                        <thead>
                          <tr class="headings">
                            <th>
                              <input type="checkbox" id="check-all" class="flat">
                            </th>
                            <th class="column-title">Mã Câu Hỏi </th>
                            <th class="column-title">Nội Dung Câu Hỏi </th>
                            <th class="column-title">Đáp Án A </th>
                            <th class="column-title">Đáp Án B </th>
                            <th class="column-title">Đáp Án C </th>
                            <th class="column-title">Đáp Án D </th>
                            <th class="column-title">Đáp Án Đúng </th>
                            <th class="column-title no-link last"><span class="nobr">Xem</span>
                            </th>
                            <th class="bulk-actions" colspan="8">
                              <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                            </th>
                          </tr>
                        </thead>

                        <tbody>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">CHN0001</td>
                            <td class=" ">Hình tam giác có mấy cạnh</td>
                            <td class=" ">1</td>
                            <td class=" ">2</td>
                            <td class=" ">3</td>
                            <td class=" ">4</td>
                            <td class=" ">C</td>  
                            <td class=" "><a href="admin.jsp">Xem Chi Tiết</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">CHN0002</td>
                            <td class=" ">Hình Vuông có mấy cạnh</td>
                            <td class=" ">1</td>
                            <td class=" ">2</td>
                            <td class=" ">3</td>
                            <td class=" ">4</td>
                            <td class=" ">D</td>  
                            <td class=" last"><a href="#">Xem Chi Tiết</a>
                            </td>
                          </tr>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">CHN0003</td>
                            <td class=" ">Hình chữ nhật có đặc mấy cặp cạnh bằng nhau</td>
                            <td class=" ">1</td>
                            <td class=" ">2</td>
                            <td class=" ">3</td>
                            <td class=" ">4</td>
                            <td class=" ">D</td>  
                            <td class=" last"><a href="#">Xem Chi Tiết</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">CHN0004</td>
                            <td class=" ">Có mấy cách để tính diện tính hình tam....</td>
                            <td class=" ">1</td>
                            <td class=" ">2</td>
                            <td class=" ">3</td>
                            <td class=" ">4</td>
                            <td class=" ">B</td>  
                            <td class=" last"><a href="#">Xem Chi Tiết</a>
                            </td>
                          </tr>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">CHN0005</td>
                            <td class=" ">Hình thang cân có mấy cặp góc bằng nhau</td>
                            <td class=" ">1</td>
                            <td class=" ">2</td>
                            <td class=" ">3</td>
                            <td class=" ">4</td>
                            <td class=" ">B</td>  
                            <td class=" last"><a href="#">Xem Chi Tiết</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">CHN0006</td>
                            <td class=" ">Hình tròn có mấy góc</td>
                            <td class=" ">1</td>
                            <td class=" ">10</td>
                            <td class=" ">Vô số</td>
                            <td class=" ">Không có góc nào</td>
                            <td class=" ">C</td>  
                            <td class=" last"><a href="#">Xem Chi Tiết</a>
                            </td>
                          </tr>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">CHN0007</td>
                            <td class=" ">Trái Đất có hình gì?</td>
                            <td class=" ">Tròn</td>
                            <td class=" ">Đĩa Phẳng</td>
                            <td class=" ">Cầu</td>
                            <td class=" ">Cầu hơi dẹt</td>
                            <td class=" ">D</td>  
                            <td class=" last"><a href="#">Xem Chi Tiết</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">CHN0008</td>
                            <td class=" ">Tòa nhà trung tâm có tuổi thọ bao nhiêu năm</td>
                            <td class=" ">1 năm</td>
                            <td class=" ">5 năm</td>
                            <td class=" ">10 năm</td>
                            <td class=" ">120 năm</td>
                            <td class=" ">A</td>  
                            <td class=" last"><a href="#">Xem Chi Tiết</a>
                            </td>
                          </tr>

                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">CHN0009</td>
                            <td class=" ">Bánh xe đạp đang chạy chuyển động theo hình...</td>
                            <td class=" ">Tròn</td>
                            <td class=" ">Elip</td>
                            <td class=" ">Nửa Hình Tròn</td>
                            <td class=" ">Hình Vuông</td>
                            <td class=" ">C</td>  
                            <td class=" last"><a href="#">Xem Chi Tiết</a>
                            </td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">CHN00010</td>
                            <td class=" ">Qỏa cam có hình gì?</td>
                            <td class=" ">Cầu</td>
                            <td class=" ">Tròn</td>
                            <td class=" ">Hình Qỏa Cam</td>
                            <td class=" ">Cầu hơi dẹt</td>
                            <td class=" ">C</td>  
                            <td class=" last"><a href="#">Xem Chi Tiết</a>
                            </td>
                          </tr>
                            <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">CHN00011</td>
                            <td class=" ">Cái Loa có hình gì?</td>
                            <td class=" ">Thang</td>
                            <td class=" ">Nhiều hình thãn xếp lên</td>
                            <td class=" ">Nhiều Hình chữ nhật xếp lên</td>
                            <td class=" ">Hình cái thang</td>
                            <td class=" ">C</td>  
                            <td class=" last"><a href="#">Xem Chi Tiết</a>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
            <div> 
            <div> 
            <div class="col-md-5 col-sm-5 col-xs-12 col-md-offset-1">
                          <button type="submit" class="btn btn-primary"data-toggle="modal"data-target="#myModal3">Sửa Câu Hỏi</button>
                <!-- Modal --> 
                <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Sửa Câu Hỏi</h4>
                      </div>
                      <div class="modal-body">
                        <form id="FormTimKiemNangCao" method="post" class="form-horizontal" action="">

                      <div class="form-group">
                        <label class="col-sm-4 control-label" for="TimKiemTheo">Nội dung Câu Hỏi</label>
                        <div class="col-sm-5">
                          <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-4 control-label" for="TimKiemTheo">Đáp Án A</label>
                        <div class="col-sm-5">
                          <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="col-sm-4 control-label" for="TimKiemTheo">Đáp Án B</label>
                        <div class="col-sm-5">
                          <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                                            <div class="form-group">
                        <label class="col-sm-4 control-label" for="TimKiemTheo">Đáp Án C</label>
                        <div class="col-sm-5">
                          <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                                            <div class="form-group">
                        <label class="col-sm-4 control-label" for="TimKiemTheo">Đáp Án D</label>
                        <div class="col-sm-5">
                          <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                                            <div class="form-group">
                        <label class="col-sm-4 control-label" for="TimKiemTheo">Đáp Án Đúng</label>
                        <div class="col-sm-5">
                          <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                    </form>
                                          <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                       <a href="listuser.jsp"><button type="button" class="btn btn-primary">Lưu</button></a> 
                      </div>
                                        </div>
                                      </div>
                                    </div>
                            </div>
                          <button type="submit" class="btn btn-succe">Refresh </button>
                          <button type="submit" class="btn btn-danger">Hủy</button>
                        </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- footer content -->
        </div>
        
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Design by Văn Khoa <a href="https://www.facebook.com/sandykio.zih">Văn Khoa</a>
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