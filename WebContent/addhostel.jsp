<!doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/Mycss.css" rel="stylesheet">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Add Hostel</title>
<meta name="keywords" content="Hostel Allotment">

<script language="javascript">
function fncSubmit()
{

if(document.addhostelForm.hostelname.value == "")
{
alert('Please Enter Hostel Name');
document.addhostelForm.hostelname.focus();
return false;
} 
if(document.addhostelForm.hostelid.value == "")
{
alert('Please Enter Hostel Id');
document.addhostelForm.hostelid.focus();
return false;
} 

}
</script>
</head>
<body>

<div class="container">
<div class="col-md-3"></div>
<div class="col-md-6" style="background-color:#D5DBDB">
  <h2 > Add Hostel </h2>
  <br>
 
 <form name="addhostelForm"  action="addhostelservlet" method="post" OnSubmit="return fncSubmit()" >

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
 
 <div class="form-group" >
    <label style="text-align:center">Enter Hostel Id </label>
    
   
    
      <input type="text" class="form-control" name="hostelid" id="exampleInputhostelid" placeholder="hostel id">
      
   
  </div>
 
  <div class="form-group" >
    <label style="text-align:center">Enter Hostel Name </label>
    
    
     
    <input type="text" class="form-control" name="hostelname" id="exampleInputhostelname" placeholder="hostel name">
  </div>
   <button type="submit" class="btn btn-primary">Submit</button>
   <br>
   <br>
  </div>
</form>
<div class="col-md-3"></div>
</div>

</body>
</html>