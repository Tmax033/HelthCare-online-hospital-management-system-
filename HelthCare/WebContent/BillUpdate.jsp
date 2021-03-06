
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String Bno = request.getParameter("Bno");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "hms";
	String userid = "root";
	String password = "hasindu";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
	try {
		connection = DriverManager.getConnection(connectionUrl + database, userid, password);
		statement = connection.createStatement();
		String sql = "select * from billtable where Bno=" + Bno;
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="Stylesheet" href="jquery.datetimepicker.min.css">

<script src="jquery.js"></script>
<script src="jquery.datetimepicker.full.js"></script>

<script>
	function validateForm() {

		var a = document.forms["UpdateBill"]["Bno"].value;
		if (a == "") {
			alert("Bill No cannot be Empty!!");
			return false;
		}

		var b = document.forms["UpdateBill"]["date"].value;
		if (b == "") {
			alert("date cannot be Empty!!");
			return false;
		}

		var c = document.forms["UpdateBill"]["HCid"].value;
		if (c == "") {
			alert("Hospital Chargers cannot be Empty!!");
			return false;
		}

		var d = document.forms["UpdateBill"]["DCid"].value;
		if (d == "") {
			alert("Doctor Chargers cannot be Empty!!");
			return false;
		}
		var e = document.forms["UpdateBill"]["TBid"].value;
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

<title>Update Bill</title>
</head>
<body>

	<header class="templatemo-site-header">
		<h1>HOSPITAL MANAGEMENT SYSTEM</h1>
	</header>



	<h2>Update Bills</h2>
	<br>

	<div class="addform">
		<form name="UpdateBill" onsubmit="return validateForm()"
			class="form-horizontal" method="post" action="BillUpdateProcess.jsp">
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Bill No :</label>
				<div class="col-sm-10">
					<input type="number" name="Bno" class="form-control" id="Bno"
						value="<%=resultSet.getInt("Bno")%>" required>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Billing Date
					:</label>
				<div class="col-sm-10">
					<input type="date" name="date" class="form-control" id="date"
						value="<%=resultSet.getString("date")%>" required>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Hospital
					Chargers :</label>
				<div class="col-sm-10">
					<input type="number" name="HCid" class="form-control" id="HCid"
						value="<%=resultSet.getDouble("HCid")%>" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Doctor
					Chargers :</label>
				<div class="col-sm-10">
					<input type="number" name="DCid" class="form-control" id="DCid"
						value="<%=resultSet.getDouble("DCid")%>" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Other
					Chargers :</label>
				<div class="col-sm-10">
					<input type="number" name="OCid" class="form-control" id="OCid"
						value="<%=resultSet.getDouble("OCid")%>" required>
				</div>
			</div>
			<div class="form-group">

				<label class="control-label col-sm-2" for="pwd">Total Bill :</label>
				<div class="col-sm-10">
					<input type="number" name="TBid" class="form-control" id="TBid"
						value="<%=resultSet.getDouble("TBid")%>" required>
				</div>
			</div>


			<div class="col-sm-10">
				<button type="submit" data-toggle="modal"
					data-target="#exampleModal" class="btn btn-primary">Save</button>
			</div>


		</form>
		<%
			}
				connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</div>

</body>
</html>