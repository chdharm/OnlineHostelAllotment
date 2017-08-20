<!doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/Mycss.css" rel="stylesheet">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Home Page</title>
<meta name="keywords" content="Hostel Allotment">

<script type="text/javascript">

</script>
</head>

<body style="background-color:#FBF6EE">


<!--session checking -->
     <% 
        if(session.getAttribute("username")==null)
        {
        	response.sendRedirect("index.jsp");
        }
     %>
     
     
     
<div class="container">
<nav class="navbar navbar-inverse navbar-fixed-top">
<img src="img/logo.png" style="height:40px; margin-top:4px"/>
</nav>
<div class="col-md-12" style="height:50px">any</div>

<!--This line is for giving space for bar which is containing home contact action list -->

<div class="col-md-12" style="height:50px; background-color:#333333">
<div class="col-md-1"></div>
	<div class="col-md-2" style="color:;font-weight:bold;margin-top:20px;background-color:" ><a style="color:white" href="index.jsp"> Home</a></div>
	<div class="col-md-2" style="color:;font-weight:bold;margin-top:20px;background-color:"><a style="color:white" href="Hostel.jsp"> Hostels</a></div>
	<div class="col-md-2" style="color:;font-weight:bold;margin-top:20px;background-color:"><a style="color:white" href="Rules.jsp"> Rules</a></div>
	<div class="col-md-2"style="color:;font-weight:bold;margin-top:20px;background-color:"><a style="color:white" href="Contacts.html"> Contacts</a></div>
	<div class="col-md-2"style="color:;font-weight:bold;margin-top:20px;background-color:"><a style="color:white" href="Help.jsp"> Help</a></div>
	<div class="col-md-1"style="color:;font-weight:bold;margin-top:20px;background-color:"><a style="color:white" href="Feedback.jsp"> Feedback</a></div>
</div>
<br>
<br>
<!------------------------------------------------------------------------------------------------------------------------>
    <!--These lines are for giving division which is in left side for photo section--> 
	<div class="col-md-5" style="background-color:#FBF6EE"><br/>
    
    <br>
	<br>
<!--=======carousal 1 for Aryabhatt Hostel======================================================================================================-->
     <div id="myCarousel" class="carousel slide" data-ride="carousel" >
         <!-- Indicators -->
         <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img class="first-slide" src="img/Hostels/Aryabhatt/picture (1).png" class=" img-responsive" alt="First slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1></h1>
                <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/Hostels/Aryabhatt/picture (2).png" class="img-responsive" alt="Second slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/Hostels/Aryabhatt/picture (3).png" class="img-responsive" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
	<br>
<!--=====carousal 2 for kalam=====================================================================================================-->
     <div id="myCarousel" class="carousel slide" data-ride="carousel" >
         <!-- Indicators -->
         <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img class="first-slide" src="img/Hostels/Kalam/picture (1).png" class=" img-responsive" alt="First slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1></h1>
                <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/Hostels/Kalam/picture (2).png" class="img-responsive" alt="Second slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/Hostels/Kalam/picture (3).png" class="img-responsive" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
	<br>
<!--=======carousal 3 for Maitreyee hostels======================================================================================================--> 
<div id="myCarousel" class="carousel slide" data-ride="carousel" >
         <!-- Indicators -->
         <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img class="first-slide" src="img/Hostels/Maitreyee/picture (1).png" class=" img-responsive" alt="First slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1></h1>
                <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/Hostels/Maitreyee/picture (2).png" class="img-responsive" alt="Second slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/Hostels/Maitreyee/picture (3).png" class="img-responsive" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->   
	<br>
 <!--=======carousal 4 for Ramanujam======================================================================================================-->
 <div id="myCarousel" class="carousel slide" data-ride="carousel" >
         <!-- Indicators -->
         <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img class="first-slide" src="img/Hostels/Ramanujam/picture (1).png" class=" img-responsive" alt="First slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1></h1>
                <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/Hostels/Ramanujam/picture (2).png" class="img-responsive" alt="Second slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/Hostels/Ramanujam/picture (3).png" class="img-responsive" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
	<br>
 <!--=======carousal 5 for NewVS======================================================================================================-->
 <div id="myCarousel" class="carousel slide" data-ride="carousel" >
         <!-- Indicators -->
         <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img class="first-slide" src="img/Hostels/NewVS/picture (1).png" class=" img-responsive" alt="First slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1></h1>
                <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/Hostels/NewVS/picture (2).png" class="img-responsive" alt="Second slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/Hostels/NewVS/picture (3).png" class="img-responsive" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
	<br>
 <!--=======carousal 6 for OLD VS======================================================================================================-->
 <div id="myCarousel" class="carousel slide" data-ride="carousel" >
         <!-- Indicators -->
         <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img class="first-slide" src="img/Hostels/VSHostel/picture (1).png" class=" img-responsive" alt="First slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1></h1>
                <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/Hostels/VSHostel/picture (2).png" class="img-responsive" alt="Second slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/Hostels/VSHostel/picture (3).png" class="img-responsive" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
	<br>
<!-- =======carousal 7 for Raman======================================================================================================-->
 <div id="myCarousel" class="carousel slide" data-ride="carousel" >
         <!-- Indicators -->
         <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img class="first-slide" src="img/Hostels/Raman/picture (1).png" class=" img-responsive" alt="First slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1></h1>
                <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/Hostels/Raman/picture (2).png" class="img-responsive" alt="Second slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/Hostels/Raman/picture (3).png" class="img-responsive" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
	<br>
 <!--=======carousal 8 for Gargi======================================================================================================-->
 <div id="myCarousel" class="carousel slide" data-ride="carousel" >
         <!-- Indicators -->
         <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img class="first-slide" src="img/Hostels/Gargi/picture (1).png" class=" img-responsive" alt="First slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1></h1>
                <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/Hostels/Gargi/picture (2).png" class="img-responsive" alt="Second slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/Hostels/Gargi/picture (3).png" class="img-responsive" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
	<br>
 <!--=======carousal 9 for Khosla======================================================================================================-->
 <div id="myCarousel" class="carousel slide" data-ride="carousel" >
         <!-- Indicators -->
         <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img class="first-slide" src="img/Hostels/Khosla/picture (1).png" class=" img-responsive" alt="First slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1></h1>
                <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/Hostels/Khosla/picture (2).png" class="img-responsive" alt="Second slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/Hostels/Khosla/picture (3).png" class="img-responsive" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
	<br>
 
 
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
 <!------------------------------------------------------------------------------------------------------------------------>   
    
    
    
    
    
    
    
    
    
    
    
    <!--These lines are for giving division which is in right side for login form section-->
       <!--These lines are for giving division which is in right side for login form section-->
    <div class="col-md-7">
    	<div class="col-md-12" style="height:50px" ></div>
      
        <br>
        <div class="col-md-1"></div>
        <div class="col-md-10">
        <div class="row" style="; border-radius:5px">
        	<div class="col-sm-6" style="border:1px solid #337AB7; background-color:#337AB7;border-radius:5px 0px 0px 0px"><a href="#"><button class="btn btn-primary" style="width:100%; border-radius:0px;border:0px">Edit Profile</button></a></div>
            <div class="col-sm-6" style="border:1px solid #5CB85C; background-color:#5CB85C;border-radius:0px 5px 0px 0px"><a  href="logout.jsp"><button class="btn btn -success" style="width:100%; border-radius:0px; border:0px">Logout</button></a></div>
        <div class="col-md-12 row">
        
        
        <!--These lines are for giving different fields in LogIn page-->
        	<div class="col-md-12" id="login" style=" visibility:visible; position:absolute; height:auto;border:1px solid silver; border-top:0px; border-radius:0px 0px 5px 5px;" >
            <br>
            <!---------Profile section----------------------------------------------------------------->
			
			
			
   
   
          
            <div class="panel-heading">
              <h3 class="panel-title" style="text-align:center"><b>
              <%
              String username = request.getParameter("username");
	        	out.print("welcome   "+username);%> </b></h3>
            </div>
            
            
            
            
            
            <!-- fetching data from student_register table to update profile -->
            
            
            
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
// String name = request.getParameter("name");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "hostelallotementdb";
String userId = "root";
String password = "saurabh";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
String rollno=null;
String name=null;
String year=null;
String branch=null;
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM student_register where username = '"+username+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
  
	 rollno= resultSet.getString("username");	
	 name= resultSet.getString("name");
	 year= resultSet.getString("year");
	 branch= resultSet.getString("branch");

}

} catch (Exception e) {
e.printStackTrace();
}
            
  %>     
            
            
            
            <!--  ----------------close-----------  -->
            
            
            
            
            
            
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="img\rupa.jpg" class="img-circle img-responsive "> </div>
                
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                    <tr>
                        <td>Name</td>
                        <td><% out.println(name);%></td>
                      </tr>
                      <tr>
                        <td>Department:</td>
                        <td><% out.println(branch); %></td>
                      </tr>
                      <tr>
                        <td>Year:</td>
                        <td><% out.println(year); %></td>
                      </tr>
                      
                   
                       
                     
                    </tbody>
                  </table>
                  
                  <a href="applyhostel.jsp" class="btn btn-primary">Apply for Hostel</a>
                  <a href="changepasswordform.jsp" class="btn btn-primary">change password</a>
                  <%
		        	session.setAttribute("username", username);
		        	request.setAttribute("username", username);
		            RequestDispatcher rs = request.getRequestDispatcher("home.jsp");
		            rs.forward(request, response); %>
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                        <a href="mailto:chaudharydharmpal95@gmail.com" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                        <span class="pull-right">
                            <a href="EditUser.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                    </div>
            
          
        
			
			
			
			
			
			
			
			
			
			
			
			
			
			<!---------Profile section completed----------------------------------------------------------------->
            
            </div >
        </div>
        </div>
        </div>
        <div class="col-md-1"></div>
    </div>
        
    





<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	</div>
	<!--this line is for footer-->
	<div style="margin-left:100px;margin-right:100px;height:50px;background-color:#222222"><div>
</body>
</html>
