<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>


<!doctype html>

<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/Mycss.css" rel="stylesheet">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Delete Room</title>
<meta name="keywords" content="Hostel Allotment">

<script language="javascript">
function fncSubmit()
{

if(document.deleteroomForm.hostelname.value == "choose")
{
alert('Please Select Hostel Name');
document.deleteroomForm.hostelname.focus();
return false;
} 
if(document.deleteroomForm.roomname.value == "")
{
alert('Please Enter Room Name TO Delete');
document.deleteroomForm.roomname.focus();
return false;
} 

}
</script>
</head>
<body>

<div class="container">
<div class="col-md-4"></div>
<div class="col-md-4" style="background-color:#D5DBDB">
  <h2  style="text-align:center"> Add Room </h2>
  <br>
 
 <form name="deleteroomForm"  action="deleteroomservlet" method="post" OnSubmit="return fncSubmit()" >

    <!-- printing message hostel added successfully -->
    <div style="color:red">  <%   String message1=(String)request.getAttribute("message1");
            if(message1 != null)
            {
                out.println("    "+message1);
            }
            
            %>
            </div>
            
    <div style="color:green">  <%   String message=(String)request.getAttribute("message");
            if(message != null)
            {
                out.println("    "+message);
            }
            
            %>
     </div>
 

    
    
   <!-- fetching hostels name from database -->
    
    <%
    try{
      Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/HostelAllotementDB","root", "saurabh");
        Statement statement = connection.createStatement() ;
        resultset =statement.executeQuery("select hostel_name from hostel") ;
%>

   <div class="form-group">
    <label for="exampleInputroom">Select  Hostel</label>
    <select class="form-control"  name="hostelname" id="exampledeleteroom">
     <option>choose</option>
     <%
while(resultset.next())
{
String name = resultset.getString("hostel_name"); 
%>
<option value="<%=name %>"><%=name %></option>
<%
}
%>
    </select>
  </div>
 
      
   <!-- end fetching hostels -->
   
 
 
  <div class="form-group" >
    <label style="text-align:center">Enter Room Name </label>
   
    <input type="text" class="form-control" name="roomname" id="exampledeleteroom" placeholder="Room Name">
  </div>
  
   <button type="submit" class="btn btn-primary">Submit</button>
   <br>
   <br>
 <%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
</form>
<div class="col-md-4"></div>
</div>

</body>
</html>