<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.jeppiaar.util.ConnectionUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jeppiaar.model.Vechile"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Excel</title>
</head>
<body>
<%//excel
		String exportToExcel =(String) request.getParameter("exportToExcel");
		if (exportToExcel != null
				&& exportToExcel.toString().equalsIgnoreCase("YES")) {
			response.setContentType("application/vnd.ms-excel");
			response.setHeader("Content-Disposition", "inline; filename="
					+ "excel.xls");

		}
		%>
		<%
if(session.getAttribute("vechileNo")!=null){
	
Vechile vechile=(Vechile)session.getAttribute("vechileNo");
String sql="select * from fc where vechile_no=? and (fc_date>=? and fc_date<=?) order by fc_date ASC;";
Connection connection=ConnectionUtil.getconnection();
PreparedStatement preparedStatement=connection.prepareStatement(sql);
preparedStatement.setString(1, vechile.getVechileNo());
preparedStatement.setDate(2,  new java.sql.Date(vechile.getStart().getTime()));
preparedStatement.setDate(3,  new java.sql.Date(vechile.getEnd().getTime()));
ResultSet resultSet=preparedStatement.executeQuery();
int i=0;

while(resultSet.next())
{
	//System.out.println("hi");
	if(i==0){
%>

		<table border="5 px">
				<thead>
				<tr> <center>FC Vechile List</center></tr>
					<tr>
					<th><center>Sno</center></th>
					<th><center>Vechile No</center></th>
					<th><center>Vechile Type</center></th>
					<th><center>FC Date</center></th>
					<th><center>FC Amount</center></th>
					</tr>
				</thead>
				<tbody>
<%}%>
<tr>
<td ><%=i+1 %></td>
<td ><%=resultSet.getString(2) %></td>
<td ><%=resultSet.getString(3) %></td>
<td ><%=resultSet.getDate(4) %></td>
<td ><%=resultSet.getString(5) %></td>
</tr>
<%
i++;
}
%>
</tbody>
</table>

<%

//Road tax
String sql1="select * from roadtax where vechile_no=? and roadtax_date>=? and roadtax_date<=? order by roadtax_date ASC;";
preparedStatement=connection.prepareStatement(sql1);
preparedStatement.setString(1, vechile.getVechileNo());
preparedStatement.setDate(2,  new java.sql.Date(vechile.getStart().getTime()));
preparedStatement.setDate(3,  new java.sql.Date(vechile.getEnd().getTime()));
resultSet=preparedStatement.executeQuery();
int j=0;

while(resultSet.next())
{
	if(j==0){
		%>
		
		<table border="5 px">
				<thead>
				<tr> <center>Road Tax Vechile List</center></tr>
					<tr>
					<th><center>Sno</center></th>
					<th><center>Vechile No</center></th>
					<th><center>Vechile Type</center></th>
					<th><center>Payment Date</center></th>
					<th><center>Payment Amount</center></th>
					</tr>
				</thead>
				<tbody>
		<%}%>
<tr>
<td ><%=j+1 %></td>
<td ><%=resultSet.getString(2) %></td>
<td ><%=resultSet.getString(3) %></td>
<td ><%=resultSet.getDate(4) %></td>
<td ><%=resultSet.getString(5) %></td>
</tr>
		<%
		j++;
		}
%>
</tbody>
</table>

<%
//Insurence
String sql2="select * from insurence where vechile_no=? and insurence_date>=? and insurence_date<=? order by insurence_date ASC;";
preparedStatement=connection.prepareStatement(sql2);
preparedStatement.setString(1, vechile.getVechileNo());
preparedStatement.setDate(2,  new java.sql.Date(vechile.getStart().getTime()));
preparedStatement.setDate(3,  new java.sql.Date(vechile.getEnd().getTime()));
resultSet=preparedStatement.executeQuery();
int k=0;

while(resultSet.next())
{
	if(k==0){
		%>
		
		<table border="5 px">
				<thead>
				<tr> <center>Insurence Vechile List</center></tr>
					<tr>
					<th><center>Sno</center></th>
					<th><center>Vechile No</center></th>
					<th><center>Vechile Type</center></th>
					<th><center>Payment Date</center></th>
					<th><center>Payment Amount</center></th>
					</tr>
				</thead>
				<tbody>
		<%}%>
		<tr>
<td ><%=k+1 %></td>
<td ><%=resultSet.getString(2) %></td>
<td ><%=resultSet.getString(3) %></td>
<td ><%=resultSet.getDate(4) %></td>
<td ><%=resultSet.getString(5) %></td>
</tr>
<%
		k++;
		}
%>
</tbody>
</table>

<%
//Permit
String sql3="select * from permit  where vechile_no=? and permit_date>=? and permit_date<=? order by permit_date ASC;";
preparedStatement=connection.prepareStatement(sql3);
preparedStatement.setString(1, vechile.getVechileNo());
preparedStatement.setDate(2,  new java.sql.Date(vechile.getStart().getTime()));
preparedStatement.setDate(3,  new java.sql.Date(vechile.getEnd().getTime()));
resultSet=preparedStatement.executeQuery();
int l=0;

while(resultSet.next())
{
	if(l==0){
		%>
		
		<table border="5 px">
				<thead>
				<tr> <center>Permit Vechile List</center></tr>
					<tr>
					<th><center>Sno</center></th>
					<th><center>Vechile No</center></th>
					<th><center>Vechile Type</center></th>
					<th><center>Payment Date</center></th>
					<th><center>Payment Amount</center></th>
					</tr>
				</thead>
				<tbody>
		<%}%>
		<tr>
<td ><%=l+1 %></td>
<td ><%=resultSet.getString(2) %></td>
<td ><%=resultSet.getString(3) %></td>
<td ><%=resultSet.getDate(4) %></td>
<td ><%=resultSet.getString(5) %></td>
</tr>
<%
		l++;
		}
%>
</tbody>
</table>

<%}
else if(session.getAttribute("vechileType")!=null){
	
	Vechile vechile=(Vechile)session.getAttribute("vechileType");
	String sql="select * from fc where vechile_type=? and (fc_date>=? and fc_date<=?) order by fc_date ASC;";
	Connection connection=ConnectionUtil.getconnection();
	PreparedStatement preparedStatement=connection.prepareStatement(sql);
	preparedStatement.setString(1, vechile.getVechileType());
	preparedStatement.setDate(2,  new java.sql.Date(vechile.getStart().getTime()));
	preparedStatement.setDate(3,  new java.sql.Date(vechile.getEnd().getTime()));
	ResultSet resultSet=preparedStatement.executeQuery();
	int i=0;

	while(resultSet.next())
	{
		//System.out.println("hi");
		if(i==0){
	%>
	
			<table border="5 px">
					<thead>
					<tr> <center>FC Vechile List</center></tr>
						<tr>
						<th><center>Sno</center></th>
						<th><center>Vechile No</center></th>
						<th><center>Vechile Type</center></th>
						<th><center>FC Date</center></th>
						<th><center>FC Amount</center></th>
						</tr>
					</thead>
					<tbody>
	<%}%>
	<tr>
	<td ><%=i+1 %></td>
	<td ><%=resultSet.getString(2) %></td>
	<td ><%=resultSet.getString(3) %></td>
	<td ><%=resultSet.getDate(4) %></td>
	<td ><%=resultSet.getString(5) %></td>
	</tr>
	<%
	i++;
	}
	%>
	</tbody>
	</table>

	<%

	//Road tax
	String sql1="select * from roadtax where vechile_type=? and roadtax_date>=? and roadtax_date<=? order by roadtax_date ASC;";
	preparedStatement=connection.prepareStatement(sql1);
	preparedStatement.setString(1, vechile.getVechileType());
	preparedStatement.setDate(2,  new java.sql.Date(vechile.getStart().getTime()));
	preparedStatement.setDate(3,  new java.sql.Date(vechile.getEnd().getTime()));
	resultSet=preparedStatement.executeQuery();
	int j=0;

	while(resultSet.next())
	{
		if(j==0){
			%>
			
			<table border="5 px">
					<thead>
					<tr> <center>Road Tax Vechile List</center></tr>
						<tr>
						<th><center>Sno</center></th>
						<th><center>Vechile No</center></th>
						<th><center>Vechile Type</center></th>
						<th><center>Payment Date</center></th>
						<th><center>Payment Amount</center></th>
						</tr>
					</thead>
					<tbody>
			<%}%>
	<tr>
	<td ><%=j+1 %></td>
	<td ><%=resultSet.getString(2) %></td>
	<td ><%=resultSet.getString(3) %></td>
	<td ><%=resultSet.getDate(4) %></td>
	<td ><%=resultSet.getString(5) %></td>
	</tr>
			<%
			j++;
			}
	%>
	</tbody>
	</table>

	<%
	//Insurence
	String sql2="select * from insurence where vechile_type=? and insurence_date>=? and insurence_date<=? order by insurence_date ASC;";
	preparedStatement=connection.prepareStatement(sql2);
	preparedStatement.setString(1, vechile.getVechileType());
	preparedStatement.setDate(2,  new java.sql.Date(vechile.getStart().getTime()));
	preparedStatement.setDate(3,  new java.sql.Date(vechile.getEnd().getTime()));
	resultSet=preparedStatement.executeQuery();
	int k=0;

	while(resultSet.next())
	{
		if(k==0){
			%>
			
			<table border="5 px">
					<thead>
					<tr> <center>Insurence Vechile List</center></tr>
						<tr>
						<th><center>Sno</center></th>
						<th><center>Vechile No</center></th>
						<th><center>Vechile Type</center></th>
						<th><center>Payment Date</center></th>
						<th><center>Payment Amount</center></th>
						</tr>
					</thead>
					<tbody>
			<%}%>
			<tr>
	<td ><%=k+1 %></td>
	<td ><%=resultSet.getString(2) %></td>
	<td ><%=resultSet.getString(3) %></td>
	<td ><%=resultSet.getDate(4) %></td>
	<td ><%=resultSet.getString(5) %></td>
	</tr>
	<%
			k++;
			}
	%>
	</tbody>
	</table>

	<%
	//Permit
	String sql3="select * from permit  where vechile_type=? and permit_date>=? and permit_date<=? order by permit_date ASC;";
	preparedStatement=connection.prepareStatement(sql3);
	preparedStatement.setString(1, vechile.getVechileType());
	preparedStatement.setDate(2,  new java.sql.Date(vechile.getStart().getTime()));
	preparedStatement.setDate(3,  new java.sql.Date(vechile.getEnd().getTime()));
	resultSet=preparedStatement.executeQuery();
	int l=0;

	while(resultSet.next())
	{
		if(l==0){
			%>
			
			<table border="5 px">
					<thead>
						<tr> <center>Permit Vechile List</center></tr>
						<tr>
						<th><center>Sno</center></th>
						<th><center>Vechile No</center></th>
						<th><center>Vechile Type</center></th>
						<th><center>Payment Date</center></th>
						<th><center>Payment Amount</center></th>
						</tr>
					</thead>
					<tbody>
			<%}%>
			<tr>
	<td ><%=l+1 %></td>
	<td ><%=resultSet.getString(2) %></td>
	<td ><%=resultSet.getString(3) %></td>
	<td ><%=resultSet.getDate(4) %></td>
	<td ><%=resultSet.getString(5) %></td>
	</tr>
	<%
			l++;
			}
	%>
	</tbody>
	</table>

	<%}
else if(session.getAttribute("all")!=null){
	
	Vechile vechile=(Vechile)session.getAttribute("all");
	String sql="select * from fc where (fc_date>=? and fc_date<=?) order by fc_date ASC;";
	Connection connection=ConnectionUtil.getconnection();
	PreparedStatement preparedStatement=connection.prepareStatement(sql);
	preparedStatement.setDate(1,  new java.sql.Date(vechile.getStart().getTime()));
	preparedStatement.setDate(2,  new java.sql.Date(vechile.getEnd().getTime()));
	ResultSet resultSet=preparedStatement.executeQuery();
	int i=0;

	while(resultSet.next())
	{
		//System.out.println("hi");
		if(i==0){
	%>
	
			<table border="5 px">
					<thead>
						<tr> <center>FC Vechile List</center></tr>
						<tr>
						<th><center>Sno</center></th>
						<th><center>Vechile No</center></th>
						<th><center>Vechile Type</center></th>
						<th><center>FC Date</center></th>
						<th><center>FC Amount</center></th>
						</tr>
					</thead>
					<tbody>
	<%}%>
	<tr>
	<td ><%=i+1 %></td>
	<td ><%=resultSet.getString(2) %></td>
	<td ><%=resultSet.getString(3) %></td>
	<td ><%=resultSet.getDate(4) %></td>
	<td ><%=resultSet.getString(5) %></td>
	</tr>
	<%
	i++;
	}
	%>
	</tbody>
	</table>

	<%

	//Road tax
	String sql1="select * from roadtax where  roadtax_date>=? and roadtax_date<=? order by roadtax_date ASC;";
	preparedStatement=connection.prepareStatement(sql1);
	preparedStatement.setDate(1,  new java.sql.Date(vechile.getStart().getTime()));
	preparedStatement.setDate(2,  new java.sql.Date(vechile.getEnd().getTime()));
	resultSet=preparedStatement.executeQuery();
	int j=0;

	while(resultSet.next())
	{
		if(j==0){
			%>
			
			<table border="5 px">
					<thead>						
					<tr> <center>Road Tax Vechile List</center></tr>
					
						<tr>
						<th><center>Sno</center></th>
						<th><center>Vechile No</center></th>
						<th><center>Vechile Type</center></th>
						<th><center>Payment Date</center></th>
						<th><center>Payment Amount</center></th>
						</tr>
					</thead>
					<tbody>
			<%}%>
	<tr>
	<td ><%=j+1 %></td>
	<td ><%=resultSet.getString(2) %></td>
	<td ><%=resultSet.getString(3) %></td>
	<td ><%=resultSet.getDate(4) %></td>
	<td ><%=resultSet.getString(5) %></td>
	</tr>
			<%
			j++;
			}
	%>
	</tbody>
	</table>

	<%
	//Insurence
	String sql2="select * from insurence where insurence_date>=? and insurence_date<=? order by insurence_date ASC;";
	preparedStatement=connection.prepareStatement(sql2);
	preparedStatement.setDate(1,  new java.sql.Date(vechile.getStart().getTime()));
	preparedStatement.setDate(2,  new java.sql.Date(vechile.getEnd().getTime()));
	resultSet=preparedStatement.executeQuery();
	int k=0;

	while(resultSet.next())
	{
		if(k==0){
			%>
			
			<table border="5 px">
					<thead>
					<tr> <center>Insurence Vechile List</center></tr>
						<tr>
						<th><center>Sno</center></th>
						<th><center>Vechile No</center></th>
						<th><center>Vechile Type</center></th>
						<th><center>Payment Date</center></th>
						<th><center>Payment Amount</center></th>
						</tr>
					</thead>
					<tbody>
			<%}%>
			<tr>
	<td ><%=k+1 %></td>
	<td ><%=resultSet.getString(2) %></td>
	<td ><%=resultSet.getString(3) %></td>
	<td ><%=resultSet.getDate(4) %></td>
	<td ><%=resultSet.getString(5) %></td>
	</tr>
	<%
			k++;
			}
	%>
	</tbody>
	</table>

	<%
	//Permit
	String sql3="select * from permit  where permit_date>=? and permit_date<=? order by permit_date ASC;";
	preparedStatement=connection.prepareStatement(sql3);
	preparedStatement.setDate(1,  new java.sql.Date(vechile.getStart().getTime()));
	preparedStatement.setDate(2,  new java.sql.Date(vechile.getEnd().getTime()));
	resultSet=preparedStatement.executeQuery();
	int l=0;

	while(resultSet.next())
	{
		if(l==0){
			%>
			
			<table border="5 px">
					<thead>
					<tr> <center>Permit Vechile List</center></tr>
						<tr>
						<th><center>Sno</center></th>
						<th><center>Vechile No</center></th>
						<th><center>Vechile Type</center></th>
						<th><center>Payment Date</center></th>
						<th><center>Payment Amount</center></th>
						</tr>
					</thead>
					<tbody>
			<%}%>
			<tr>
	<td ><%=l+1 %></td>
	<td ><%=resultSet.getString(2) %></td>
	<td ><%=resultSet.getString(3) %></td>
	<td ><%=resultSet.getDate(4) %></td>
	<td ><%=resultSet.getString(5) %></td>
	</tr>
	<%
			l++;
			}
	%>
	</tbody>
	</table>

	<%}


%>

		

</body>
</html>