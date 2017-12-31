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

  <body class="login" style="background-color: #2A3F54">
   
        <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

       

   
        <!-- page content -->

   
       
          
            <div class="login_wrapper">
              <div class="animate form login_form">
                 <section class="login_content">
                    <div class="x_panel">
                  
                  <div class="x_content">
                    <br />
                    <form action="DangNhap" method="Post" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                       <h1>Login</h1>
                    
                        
                        <div>
                          <input type="text" name="TaiKhoan" required="required" class="form-control" placeholder="Username">
                        </div>
                  
                  
                        <div >
                          <input type="password"  name="MatKhau" required="required" class="form-control" placeholder="Password">
                        </div>
                   
                      
                
                      
                
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                         
                           <div>
                         
                <input type="submit" name ="DangNhap" value ="DangNhap"/>
                
              </div>
                        </div>
                      </div>

                    </form>



                  </div>
                </div>
                 </section>
               
              </div>
            </div>
        
            
           


       

        <!-- /page content -->

        <!-- footer content -->
      
        <!-- /footer content -->
  

          
         <script type="text/javascript">
    function validate()
    {
      var nhi=document.getElementById("name_error");
         if(   document.getElementById("text1").value == "admin"
           && document.getElementById("text2").value == "admin" )
        {
            alert( "Đăng nhập thành công" );
            location.href="admin.jsp";
        }
        else if(   document.getElementById("text1").value == "student"
           && document.getElementById("text2").value == "student" )
        {
            alert( "Đăng nhập thành công" );
            location.href="student.jsp";
        }
        else if(   document.getElementById("text1").value == "teacher"
           && document.getElementById("text2").value == "teacher" )
        {
            alert( "Đăng nhập thành công" );
            location.href="teacher.jsp";
        }

        else if( document.getElementById("text1").value !=""
           || document.getElementById("text2").value !="")
        {
            alert( "Sai tên hoặc mật khẩu!" );
            location.href="dangnhap.jsp";
        }
        document.getElementById("aaa").innerHTML=text;
    }
    </script>
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

     <script src="vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
  </body>
</html>