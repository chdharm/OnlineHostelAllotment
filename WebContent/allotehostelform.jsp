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

<script language="javascript">
	function fncSubmit() {

		if (document.alloteroomform.branch.value == "choose") {
			alert('Please Select Branch Name');
			document.alloteroomform.branch.focus();
			return false;
		}
		if (document.alloteroomform.no.value == "") {
			alert('Please Select Branch Name');
			document.alloteroomform.no.focus();
			return false;
		}

	}
</script>
</head>
<body>

	<div class="container">
		<div class="col-md-4"></div>
		<div class="col-md-4" style="background-color: #D5DBDB">
			<h2 Style="text-align: center">Allot Hostel</h2>
			<br>
			<form action="allotehostel" name="alloteroomform" method="post"
				OnSubmit="return fncSubmit()">
				<div class="col-md-12">
					<div class="form-group" Style="text-align: center">
						<label for="exampleSelect1">Select  Branch</label> <select
							class="form-control" name="branch" id="branchSelect1">
							<option>Choose Branch</option>
							<option>IT</option>
							<option>CSE</option>
							<option>ME</option>
							<option>CE</option>
							<option>EE</option>
							<option>EL</option>
							<option>MCA</option>
						</select>
					</div>

					<div>
						<%
							String message = (String) request.getAttribute("message");
							if (message != null) {
								out.println(message);
							}
						%>
					</div>
					<div class="form-group" >
    <label style="text-align:center">Enter the Number of Student</label>
   
      <input type="text" class="form-control" name="no" id="exampleInputstudent" placeholder="No">
     
  </div>

					<br>

					<center>
						<button type="submit" class="btn btn-primary">Submit</button>
					</center>
					<br> <br>
				</div>
			</form>
		</div>
		<div class="col-md-4"></div>
	</div>

</body>
</html>