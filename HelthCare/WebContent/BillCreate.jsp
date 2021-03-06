<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="Stylesheet" href="jquery.datetimepicker.min.css">

<script src="jquery.js"></script>
<script src="jquery.datetimepicker.full.js"></script>

<script>
	function validateForm() {

		var a = document.forms["CreateBill"]["Bno"].value;
		if (a == "") {
			alert("Bill No cannot be Empty!!");
			return false;
		}

		var b = document.forms["CreateBill"]["date"].value;
		if (b == "") {
			alert("date cannot be Empty!!");
			return false;
		}

		var c = document.forms["CreateBill"]["HCid"].value;
		if (c == "") {
			alert("Hospital Chargers cannot be Empty!!");
			return false;
		}

		var d = document.forms["CreateBill"]["DCid"].value;
		if (d == "") {
			alert("Doctor Chargers cannot be Empty!!");
			return false;
		}
		var e = document.forms["CreateBill"]["TBid"].value;
		if (e == "") {
			alert("Total Bill cannot be Empty!!");
			return false;
		}

	}
</script>

<style>
h1 {
	text-align: left;
	text-transform: uppercase;
	color: #4CAF50;
}
</style>

<title>Bills</title>
</head>
<body>

	<header class="templatemo-site-header">
	<h1>HOSPITAL MANAGEMENT SYSTEM</h1>
	</header>

	<h2>Create Bills</h2>
	<br>

	<!--add form-->

	<div class="addform">
		<form name="CreateBill" onsubmit="return validateForm()"
			class="form-horizontal" action="BillServlet" method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Bill No :</label>
				<div class="col-sm-10">
					<input type="number" name="Bno" class="form-control" id="Bno"
						required>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Billing Date :</label>
				<div class="col-sm-10">
					<input type="date" name="date" class="form-control" id="date"
						required>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Hospital Chargers :</label>
				<div class="col-sm-10">
					<input type="double" name="HCid" class="form-control" id="HCid"
						required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Doctor Chargers :</label>
				<div class="col-sm-10">
					<input type="double" name="DCid" class="form-control" id="DCid"
						required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Other Chargers :</label>
				<div class="col-sm-10">
					<input type="double" name="OCid" class="form-control" id="OCid">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Total Bill :</label>
				<div class="col-sm-10">
					<input type="double" name="TBid" class="form-control" id="TBid">
				</div>
			</div>


			<div class="col-sm-10">
				<button type="submit" data-toggle="modal"
					data-target="#exampleModal" class="btn btn-primary">Create</button>

			</div>


		</form>
	</div>


</body>


</html>