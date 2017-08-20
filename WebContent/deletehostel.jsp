<!doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/Mycss.css" rel="stylesheet">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Delete Hostel</title>
<meta name="keywords" content="Hostel Allotment">


</head>
<body>

<div class="container">
<div class="col-md-4"></div>
<div class="col-md-4" style="background-color:#D5DBDB"></br>
  <h2 > <center>Delete Hostel </center></h2>
  <br>
 <div style="color:green">  <%   String message1=(String)request.getAttribute("message1");
            if(message1 != null)
            {
                out.println("    "+message1);
            }
            
            %>
            </div>
 <form  action="deletehostelservlet" method="post" " >
  
  <div class="form-group" >
    <b>Delete By:   </b><input type="radio" name="deleteby" value="byname">  Name
                    </b><input type="radio" name="deleteby" value="byid" >   Id
                    </br>
                    </br>
    <input type="text" class="form-control" name="value" id="exampleInputPassword1" placeholder="Value">
  </div>
   <center><button type="submit" class="btn btn-primary">Submit</button></center>
   <br>
   <br>
  </div>
</form>
<div class="col-md-4"></div>
</div>

</body>
</html>