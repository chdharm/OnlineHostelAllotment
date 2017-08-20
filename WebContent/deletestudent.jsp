<!doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/Mycss.css" rel="stylesheet">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Delete Student</title>
<meta name="keywords" content="Hostel Allotment">

<script language="javascript">
function fncSubmit()
{

if(document.deletestudentForm.rollno.value == "")
{
alert('Please Enter Roll No');
document.deletestudentForm.rollno.focus();
return false;
} 
if(document.deletestudentForm.name.value == "")
{
alert('Please Enter Name');
document.deletestudentForm.name.focus();
return false;
}

document.deletestudentForm.submit();
}
</script>
</head>
<body>

<div class="container">
<div class="col-md-4"></div>
<div class="col-md-4" style="background-color:#D5DBDB">
  <h2 > Delete Student </h2>
  <br>
 
 <form name="deletestudentForm"  action="deletestudentservlet" method="post" OnSubmit="return fncSubmit()" >

    <!-- printing message hostel added successfully -->
     <div style="color:green">  <%   String message=(String)request.getAttribute("message");
            if(message != null)
            {
                out.println("  "+message);
            }
            
            %>
    </div>
    <div style="color:red">  <%   String message1=(String)request.getAttribute("message1");
            if(message1 != null)
            {
                out.println("  "+message1);
            }
            
            %>
    </div>
 
 <div class="form-group" >
    <label style="text-align:center">Enter Roll No of Student </label>
   
      <input type="text" class="form-control" name="rollno" id="exampledeletestudent" placeholder="Roll No">
     
  </div>
 
  <div class="form-group" >
    <label style="text-align:center">Enter  Name of Student </label>
   
    <input type="text" class="form-control" name="name" id="exampledeletestudent" placeholder="Name">
  </div>
 
  
   <button type="submit" class="btn btn-primary">Submit</button>
   <br>
   <br>
  </div>
</form>
<div class="col-md-4"></div>
</div>

</body>
</html>