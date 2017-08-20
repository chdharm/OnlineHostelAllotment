<!--session checking -->
<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("index.jsp");
	}
%>

<%
	String username = (String) session.getAttribute("username");
%>
<!doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/Mycss.css" rel="stylesheet">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Hostel Allotment</title>
<meta name="keywords" content="Hostel Allotment">





<style>
<!-- These three lines are written for carousals and after that are for making nav bar(home, hostel, rules etc.) hoverable -->
.mySlides1 {display:none;}
.mySlides2 {display:none;}
.mySlides3 {display:none;}

.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
   
    
 }
 .dropdown:hover{
   
    text-decoration:none; 
    
 }
</style>

</head>
<body style="background-color:WHITE">
<!-- For giving 1st full division for Knit  logo-->
<div class="col-md-12" style="background-color:#222222">
<div class="col-md-6"  style="color:red"><img src="img/logo.png" style="height:100px; margin-top:4px; margin-left:30px;margin-bottom:4px" /></div>

<div class="col-md-6"  style="color:red"><pre style="color:white;background-color:#222222 ;border:none">

<b>"Excellence is a continuous process not an Accident"</b>
                                                 -Dr.A.P.J. Abdul Kalam</pre><br></div>

</div>





<!-- For giving 2nd full division for student housing logo-->
<div class="col-md-12" style="background-color:WHITE">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="img/logo (2).png" style="height:70px; margin-top:4px; margin-left:30px" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b> Hostel Allotment System</b>
     
	
</br>
</br>

</div>







<!-- For giving 3rd full division for third section-->
<div class="col-md-12" >
<div class="col-md-1" style="background-color:WHITE" ></div>
<!--For giving middle section-->
<div class="col-md-10"  style="background-color:WHITE">
   
   <div class="col-md-12" style="background-color:black" >	
		  
		  
	<div class="col-md-2" style="color:;font-weight:bold;margin-top:10px;margin-bottom:10px;background-color:black" ><a style="color:white" href="index.jsp"> Home</a></div>
	<div class="col-md-2" style="color:;font-weight:bold;margin-top:10px;margin-bottom:10px;background-color:black">
	<li class="dropdown">
          <a href="#" class="dropdown-toggle alink" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">About Us<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="facilities.html">Hostel Facilities</li>
            <li><a href="message.html">Message From Warden</a></li>
            <li><a href="Anti.html">AntiRaging Committee</a></li>
		
            
          </ul>
          </li>
	</div>
	<div class="col-md-2" style="color:;font-weight:bold;margin-top:10px;margin-bottom:10px;background-color:black">
	<li class="dropdown">
          <a href="#" class="dropdown-toggle alink" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hostel<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="ramanujam.html">Ramanujam Hostel</li>
            <li><a href="oldvs.jsp">New VS Hostel</a></li>
            <li><a href="oldvs.jsp">Old VS Hostel</a></li>
			<li><a href="aryabhatt.html">Aryabhatt Hostel</li>
            <li><a href="khosla.html">Khosla Hostel</a></li>
            <li><a href="raman.html">Raman Hostel</a></li>
			<li><a href="kalam.html">Kalam Hostel</li>
            <li><a href="gargi.html">Gargi Hostel</a></li>
            <li><a href="maitreyee.html">Maitreyee Hostel</a></li>
            
          </ul>
          </li>
	</div>
	<div class="col-md-2" style="color:;font-weight:bold;margin-top:10px;margin-bottom:10px;background-color:black">
	<li class="dropdown">
          <a href="#" class="dropdown-toggle alink" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Rules<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="generalhostelrules.html">General Hostel Rules</li>
            <li><a href="girlrules.html">Girls Rules </a></li>
            <li><a href="messrules.html">Mess Rules</a></li>
		          </ul>
          </li>
	</div>
	<div class="col-md-2"style="color:;font-weight:bold;margin-top:10px;margin-bottom:10px;background-color:black"><a style="color:white" href="contacts.html"> Contacts</a></div>
		</div>
		  

	<div class="col-md-12">
		 <div class="col-md-12" style="background-color: #D5DBDB">

		<div class="col-md-4">
			<h3 style="color: #00008B">
				Welcome
				<%
				out.print(session.getAttribute("username"));
			%>
			</h3>
		</div>
		<div class="col-md-6"></div>
		<div class="col-md-2">
			<h3>
				<a href="logout.jsp">logout</a>
				<h3>
		</div>


	</div>
		<div></div>
		<div class="col-md-12" style="background-color: #D5DBDB">
			<center>
				<u><h2 style="color: #008B8B">Warden And Hostel Detail</h2></u>
			</center>
			<br> <br>


			<!-- fetching data from hostel table to update profile -->



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

				//Dharmpal made changes here
				int totalrooms = 0;
				int allotedrooms = 0;
				int vacantrooms = 0;

				try {
					Class.forName(driverName);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}

				Connection connection = null;
				Statement statement = null;
				Statement statement1 = null;
				Statement statement2 = null;
				ResultSet resultSet = null;
				String hostelname = null;
				//Dharmpal made changes
				ResultSet resultSet1 = null;
				ResultSet resultSet2 = null;
				String wardenname = null;

				try {
					connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
					statement = connection.createStatement();
					String sql = "SELECT * FROM hostel where hostel_id = '" + username + "'";
					
					resultSet = statement.executeQuery(sql);
					
					while (resultSet.next()) {

						hostelname = resultSet.getString("hostel_name");
						wardenname = resultSet.getString("warden_name");

					}
			
					statement1 = connection.createStatement();
					String sql1 = "select * from hostelroom where hostelname='" + hostelname + "'";
					
					resultSet1 = statement1.executeQuery(sql1);

					

					//Dharmpal chaudhary made changes

					while (resultSet1.next()) {

						totalrooms++;

					}
					statement2 = connection.createStatement();
					String sql2 = "select * from hostelroom where roomstatus='1' and hostelname='"+hostelname + "' ";
					resultSet2 = statement2.executeQuery(sql2);

					while (resultSet2.next()) {

						allotedrooms++;
					}

					vacantrooms = totalrooms - allotedrooms;

				} catch (Exception e) {
					e.printStackTrace();
				}
			%>



			<!--  ----------------close-----------  -->
			<div>
				<div class="col-md-7">
					<b>Warden Name:</b>
					<%
						out.println(" Prof.   " + wardenname);
					%>
					<br> <b>Hostel Name:</b>
					<%
						out.println("    " + hostelname);
					%>
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-4">
					<b>Total Rooms:</b><%=totalrooms%>
					<br> <b>Alloted Rooms:</b><%=allotedrooms%>
					<br> <b>Vacant Rooms:</b><%=vacantrooms%>

				</div>
			</div>

			<br> <br> <br> <br> <br> <br> <br>
			<br> <br>
			<div class="col-md-12">
				<div class="col-md-4">
					<a href="viewstudenthostelrequest.jsp"><botton
							class="btn btn-success" style="align-left">view request</botton></a>
				</div>


				<div class="col-md-4">
					<a href="allotehostelform.jsp"><botton class="btn btn-success">allotehostel</botton></a>
				</div>


				<div class="col-md-4">
					<a href="allotedRooms.jsp"><botton class="btn btn-success">view
						alloted</botton></a>
				</div>
				<br> <br> <br>
			</div>



		</div>


	</div>
</BR></BR></BR></BR></BR></div>
<div class="col-md-1" style="background-color:WHITE"></div>

</div>





<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

<!--this line is for footer-->
	<div class="col-md-12" style="height:50px;background-color:#222222"></div>
	
	


</body>
</html>