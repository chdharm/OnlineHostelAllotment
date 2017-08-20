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
<title>DSW Home Page</title>
<meta name="keywords" content="Hostel Allotment">

<script type="text/javascript">

</script>
</head>

<body style="background-color:#FBF6EE">



     <div class ="col-md-12">
  <div class="col-md-5"><h1> hello DSW <% out.println(session.getAttribute("username")); %></h1></div>
  <div class ="col-md-4"></div>
  <div class ="col-md-3"><a href="logout.jsp"><botton class="btn btn-warning">logout</botton></a>  </div><br>
   <div class ="col-md-3"><a href="addhostel.jsp"><botton class="btn btn-warning">add hostel</botton></a>  </div><br>
    <div class ="col-md-3"><a href="deletehostel.jsp"><botton class="btn btn-warning">delete hostel</botton></a>  </div><br>
    <div class ="col-md-3"><a href="addstudent.jsp"><botton class="btn btn-warning">add student</botton></a>  </div><br>
     <div class ="col-md-3"><a href="deletestudent.jsp"><botton class="btn btn-warning">delete student</botton></a>  </div><br>
      <div class ="col-md-3"><a href="addroom.jsp"><botton class="btn btn-warning">add room</botton></a>  </div><br>
       <div class ="col-md-3"><a href="deleteroom.jsp"><botton class="btn btn-warning">delete room</botton></a>  </div><br>
  </div>
  <br>
 
</body>
</html>
