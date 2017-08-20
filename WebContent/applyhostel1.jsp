<!doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/Mycss.css" rel="stylesheet">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Apply Hostel</title>
<meta name="keywords" content="Hostel Allotment">

<script type="text/javascript" src="js/jquery-3.2.1.min.js">



/*	function showlogin()
	{
		document.getElementById('login').style.visibility="visible";
		document.getElementById('reg').style.visibility="hidden";
		}
		
		function showregister()
	{
		document.getElementById('login').style.visibility="hidden";
		document.getElementById('reg').style.visibility="visible";
		} */
/* 
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
 */		
	

 <select id="test" name="form_select" onchange="showDiv(this)">
    <option value="0">No</option>
    <option value ="1">Yes</option>
 </select>

 function showDiv(elem){
    if(elem.value == 1)
       document.getElementById('hidden_div').style.display = "block";
 }
 </script>
 
</head>
<body>

<div class="container">
  <h2>Apply for Hostel Application Form</h2>
 <form  action="processapplyhostel" method="post" >
 
 
 
 
 <select id="test" name="form_select" onchange="showDiv(this)">
   <option value="0">No</option>
   <option value ="1">Yes</option>
</select>






 <div class="col-md-4">
 
 
 
 <select id="test" name="form_select" onchange="showDiv(this)">
   <option value="0">No</option>
   <option value ="1">Yes</option>
</select>

 
  <div class="form-group">
    <label for="exampleSelect1">Select Your Year</label>
    <select class="form-control"  name="year" id="exampleSelect1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleSelect1">Select Your Hostel</label>
    <select class="form-control" name="hostelchoice" id="selecthostelid">
      <option value="1">Ramanujam Hostel</option>
      <option value="2">Aryabhatt Hostel</option>
      <option value="3">Khosla Hostel</option>
      <option value="4">Kalam Hostel</option>
	  <option value="3">Maitreyee Hostel</option>
      <option value="3">V S Hostel</option>
       <option value="4">New VS Hostel</option>
      <option value="3">Gargi Hostel</option>
      <option value="3">Raman Hostel</option>
     
     
    </select>
 </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Your Branch</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="branch" aria-describedby="emailHelp" placeholder="Enter Your Branch">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Your Marks</label>
    <input type="text" class="form-control" name="marks"  placeholder="Last Year Marks">
  </div>
  <div class="form-group" id="rollno">
    <label for="exampleInputEmail1">Enter Your Rollno</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="rollno" aria-describedby="emailHelp" placeholder="Enter Your Rollno">
     <div>  <%   String message=(String)request.getAttribute("message1");
            if(message != null)
            {
                out.println(message);
            }
            
            %>
            </div>
  </div>
   
  <div class="form-group" id="partner1">
    <label for="exampleInputPassword1" >Enter First Your Partener Rollno</label>
    <input type="text" class="form-control" name="partenerrollno" id="exampleInputPassword1" placeholder="Your Partener Rollno">
     <div>  <%   String message1=(String)request.getAttribute("message2");
            if(message1 != null)
            {
                out.println(message1);
            }
            
            %>
            </div>
  </div>
 
    <div class="form-group" id="partner2">
    <label for="exampleInputPassword1">Enter YourSecond Partener  Rollno</label>
    <input type="text" class="form-control" name="partenerrollno" id="exampleInputPassword1" placeholder="Your Partener Rollno">
    </div>
    <div class="form-group" id="partner3">
    <label for="exampleInputPassword1">Enter Your Third Partener  Rollno</label>
    <input type="text" class="form-control" name="partenerrollno" id="exampleInputPassword1" placeholder="Your Partener Rollno">
    </div>
  
 <br>
  <div>  <%   String message2=(String)request.getAttribute("message3");
            if(message2 != null)
            {
                out.println(message2);
            }
            
            %>
            </div>
            
 <br>
 
  <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>
</div>
<script type="text/javascript" ></script>
</body>
</html>