<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.jeppiaar.model.Vechile"%>
<%@page import="java.util.List"%>
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
		<table border="5 px">
		<thead>
		<tr><center><b>Fuel Report</b></center></tr>
			<tr>
				<th><center>Sno</center></th>
				<th><center>Vechile No</center></th>
				<th><center>Vechile Type</center></th>
				<th><center>Date of Filling</center></th>
				<th><center>Kilometer</center></th>
				<th><center>Liter</center></th>
				<th><center>Amount</center></th>
				<th><center>Milage</center></th>
			</tr>
		</thead>

		<tbody>

			<%
				int i = 1;
				if (session.getAttribute("list") != null) {
					List<Vechile> list = (List<Vechile>) session.getAttribute("list");
			%>

			<%
				for (Vechile temp : list) {
						DateFormat date = new SimpleDateFormat("dd/MM/yyyy");
						String df = date.format(temp.getFuelDate());
			%>
			<tr>
				<td><%=i%></td>
				<td><%=temp.getVechileNo()%></td>
				<td><%=temp.getVechileType()%></td>
				<td><%=df%></td>
				<td><%=temp.getKiloMeter()%></td>
				<td><%=temp.getLiter()%></td>
				<td><%=temp.getFuelAmount()%></td>
				<td><%=(temp.getKiloMeter() / temp.getLiter())%></td>
			</tr>
			<%
				i++;
					}

				}
			%>
		</tbody>
	</table>

		
		

</body>
</html>