<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "hms";
	String userid = "root";
	String password = "hasindu";
	String search = request.getParameter("search");
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<html>
<head>
<link rel="Stylesheet" href="jquery.datetimepicker.min">

<script src="jquery"></script>
<script src="jquery.datetimepicker.full"></script>

<style>
h1 {
	text-align: center;
	text-transform: uppercase;
	color: #4CAF50;
}
</style>

<title>Bill Search Report</title>

</head>
<body>

	<header class="templatemo-site-header">
		<h1>HOSPITAL MANAGEMENT SYSTEM</h1>
	</header>

	<h2 class="margin-bottom-10">Search Report</h2>

		<table id="mytable" class="table table-bordred table-striped">
			<thead>
				<tr>
					<th scope="col">Bill No</th>
					<th scope="col">Billing Date</th>
					<th scope="col">Hospital Chargers</th>
					<th scope="col">Doctor Chargers</th>
					<th scope="col">Other Chargers</th>
					<th scope="col">Total Bill</th>
			</thead>

			<%
				try {
					connection = DriverManager.getConnection(connectionUrl + database, userid, password);
					statement = connection.createStatement();
					String sql = "select * from billtable where Bno=" + search + " ";
					resultSet = statement.executeQuery(sql);
					while (resultSet.next()) {
			%>
			<tr>

				<td bgcolor="#FF0000"><%=resultSet.getInt("Bno")%></td>
				<td><%=resultSet.getDate("date")%></td>
				<td><%=resultSet.getDouble("HCid")%></td>
				<td><%=resultSet.getDouble("DCid")%></td>
				<td><%=resultSet.getDouble("OCid")%></td>
				<td><%=resultSet.getDouble("TBid")%></td>
			</tr>
			<%
				}
					connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>


		</table>
</body>
</html>