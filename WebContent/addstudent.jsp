<!doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/Mycss.css" rel="stylesheet">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Add Student</title>
<meta name="keywords" content="Hostel Allotment">

<script language="javascript">
function fncSubmit()
{ 

if(document.addstudentForm.rollno.value == "")
{
alert('Please Enter Roll No');
document.addstudentForm.rollno.focus();
return false;
} 
if(document.addstudentForm.name.value == "")
{
alert('Please Enter Name');
document.addstudentForm.name.focus();
return false;
}
if(document.addstudentForm.gender.value == "choose")
{
alert('Please Select Gender');
document.addstudentForm.gender.focus();
return false;
} 
if(document.addstudentForm.branch.value == "choose")
{
alert('Please Select Branch');
document.addstudentForm.branch.focus();
return false;
} 
if(document.addstudentForm.year.value == "choose")
{
alert('Please Select Year');
document.addstudentForm.year.focus();
return false;
}

}
</script>
</head>
<body>

<div class="container">
<div class="col-md-4"></div>
<div class="col-md-4" style="background-color:#D5DBDB">
  <h2 > Add Student </h2>
  <br>
 
 <form name="addstudentForm"  action="addstudentservlet" method="post" OnSubmit="return fncSubmit()" >

    <!-- printing message student added successfully  or not-->
     <div style="color:red">  <%   String message2=(String)request.getAttribute("message2");
            if(message2 != null)
            {
                out.println("  "+message2);
            }
            
            %>
    </div>
    <div style="color:green">  <%   String message1=(String)request.getAttribute("message1");
            if(message1 != null)
            {
                out.println("  "+message1);
            }
            
            %>
    </div>
 
 <div class="form-group" >
    <label style="text-align:center">Enter Roll No of Student </label>
   
      <input type="text" class="form-control" name="rollno" id="exampleInputstudent" placeholder="Roll No">
     
  </div>
 
  <div class="form-group" >
    <label style="text-align:center">Enter  Name of Student </label>
   
    <input type="text" class="form-control" name="name" id="exampleInputstudent" placeholder="Name">
  </div>
   <div class="form-group">
    <label for="exampleInputstudent">Select  Gender</label>
    <select class="form-control"  name="gender" id="exampleInputstudent">
      <option>choose</option>
      <option>F</option>
      <option>M</option>
    </select>
  </div>
  
 
   <div class="form-group">
    <label for="exampleInputstudent">Select  Branch</label>
    <select class="form-control"  name="branch" id="exampleInputstudent">
      <option>choose</option>
      <option>CE</option>
      <option>CSE</option>
      <option>EE</option>
      <option>EL</option>
      <option>ME</option>
      <option>IT</option>
      <option>MCA</option>
    </select>
  </div>
   <div class="form-group">
    <label for="exampleInputstudent">Select  Year</label>
    <select class="form-control"  name="year" id="exampleInputstudent">
      <option>choose</option>
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
    </select>
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