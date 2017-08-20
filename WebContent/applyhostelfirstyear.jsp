<!doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/Mycss.css" rel="stylesheet">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Apply Hostel First Year</title>
<meta name="keywords" content="Hostel Allotment">


</head>
<body>

<div class="container">
<div class="col-md-3"></div>
<div class="col-md-6" style="background-color:#D5DBDB">
  <h2>Apply for Hostel Application Form For First Year</h2>
 <form  action="processapplyhostelfirstyear" method="post" >
 <div >
  <div class="form-group">
    <label for="exampleInputformfirstyear">Enter Your Name</label>
    <input type="text" class="form-control" name="name" id="exampleInputformfirstyear" placeholder="Your Name">
  </div>
  <div class="form-group">
    <label for="exampleSelect1">Select Your Year</label>
    <select class="form-control"  name="year" id="exampleSelect1">
      <option>1</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleInputformfirstyear">Enter Your UPSEE Rank</label>
    <input type="text" class="form-control" id="exampleInputformfirstyear" name="upseerank"  placeholder="UPSEE Rank">
     <div>  <%   String message=(String)request.getAttribute("message1");
            if(message != null)
            {
                out.println(message);
            }
            
            %>
            </div>
  <br>
  <div class="form-group">
    <label for="exampleSelect1">Select Your Branch</label>
    <select class="form-control" name="branch" id="exampleInputformfirstyear">
      <option>Choose</option>
      <option>CE</option>
      <option>CSE</option>
      <option>EE</option>
      <option>EL</option>
	  <option>ME</option>
      <option>IT</option>
      <option>MCA</option>
     
	   
    </select>
 </div>
 
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
<div class="col-md-3"></div>
</div>

</body>
</html>