<!doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/Mycss.css" rel="stylesheet">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Home</title>
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
<script type="text/javascript">
	function showlogin()
	{
		document.getElementById('login').style.visibility="visible";
		document.getElementById('reg').style.visibility="hidden";
		}
		
		function showregister()
	{
		document.getElementById('login').style.visibility="hidden";
		document.getElementById('reg').style.visibility="visible";
		}

</script>
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
            <li><a href="">Mess Rules</a></li>
		          </ul>
          </li>
	</div>
	<div class="col-md-2"style="color:;font-weight:bold;margin-top:10px;margin-bottom:10px;background-color:black"><a style="color:white" href="contacts.html"> Contacts</a></div>
	<div class="col-md-2"style="color:;font-weight:bold;margin-top:10px;margin-bottom:10px;background-color:black"><a style="color:white" href="index.jsp"> Help</a></div>
	<div class="col-md-2"style="color:;font-weight:bold;margin-top:10px;margin-bottom:10px;background-color:black"><a style="color:white" href="feedback.html"> Feedback</a></div>
	</div>
		  
	  
		  
		  
		  <!--For giving a little space-->
		  <div class="col-md-12" style="background-color:white"></br></br></div>
		  
		  
		  


<div class="col-md-12">
<div class="col-md-6"><b> hello <% out.println(session.getAttribute("username")); %></b></div>
<div class="col-md-4"></div>
<div class="col-md-2"><a href="logout.jsp"><botton class="btn btn-warning">logout</botton></a>  </div>

<br>
<br>
<br>
<br>
</div>

<div class="col-md-12" >
		
		<div class="col-md-12" style="background-color:#FBF6EE">
 
        <div class="col-md-3"><a href="addstudent.jsp"><botton class="btn btn-primary">add student</botton></a></div>
        <div class="col-md-1"></div>
        <div class="col-md-3"><a href="deletestudent.jsp"><botton class="btn btn-primary">delete student</botton></a></div>
        <div class="col-md-1"></div>
        <div class="col-md-3">  <a href="addhostel.jsp"><botton class="btn btn-primary">add hostel</botton></a>  </div>
        <div class="col-md-1"></div>
        
    </div>
    <br>
    <br>
    <br>
    <br>
    <div class="col-md-12" style="background-color:#FBF6EE">
 
        <div class="col-md-3"><a href="deleteroom.jsp"><botton class="btn btn-primary">delete room</botton></a> </div>
        <div class="col-md-1"></div>
        <div class="col-md-3"><a href="deletehostel.jsp"><botton class="btn btn-primary">&nbspdelete hostel&nbsp</botton></a></div>
        <div class="col-md-1"></div>
        <div class="col-md-3"><a href="addroom.jsp"><botton class="btn btn-primary">&nbspadd room</botton></a>   </div>
        <div class="col-md-1"></div>
        
    </div>

</div>
<BR>

<BR>
<BR>
<BR>
<BR>
		

</BR></BR></BR></BR></BR></BR></BR></BR></BR></BR></BR></BR></div>
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