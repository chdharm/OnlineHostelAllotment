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


</head>
<body>

<div class="container">
  <h2>Apply for Hostel Application Form</h2>
 <form  action="processapplyhostel" method="post" >
 <div class="col-md-4">
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
    <div class="form-group">
    <label for="exampleInputEmail1">Enter Your Branch</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="branch" aria-describedby="emailHelp" placeholder="Enter Your Branch">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Your Marks</label>
    <input type="text" class="form-control" name="marks" id="exampleInputPassword1" placeholder="Last Year Marks">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Your Partener Rollno</label>
    <input type="text" class="form-control" name="partenerrollno" id="exampleInputPassword1" placeholder="Your Partener Rollno">
     <div>  <%   String message1=(String)request.getAttribute("message2");
            if(message1 != null)
            {
                out.println(message1);
            }
            
            %>
            </div>
  </div>
  <div class="form-group">
    <label for="exampleSelect1">Select Your Hostel</label>
    <select class="form-control" name="hostelchoice" id="exampleSelect1">
      <option>Ramanujam Hostel</option>
      <option>Aryabhatt Hostel</option>
      <option>Khosla Hostel</option>
      <option>Kalam Hostel</option>
	  <option>Maitrayee Hostel</option>
      <option>OldVs Hostel</option>
     
	   
    </select>
 
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

</body>
</html>