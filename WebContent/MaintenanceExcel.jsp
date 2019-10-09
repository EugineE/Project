<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.jeppiaar.model.Maintenenece"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Excel</title>
</head>
<body>
	<%
		//excel
		String exportToExcel = (String) request.getParameter("exportToExcel");
		if (exportToExcel != null && exportToExcel.toString().equalsIgnoreCase("YES")) {
			response.setContentType("application/vnd.ms-excel");
			response.setHeader("Content-Disposition", "inline; filename=" + "excel.xls");

		}
	%>
	<table border="5 px">
		<thead>
		<tr><center><b>Maintenance Report</b></center></tr>
			<tr>
				<th><center>Sno</center></th>
				<th><center>Vechile No</center></th>
				<th><center>Vechile Type</center></th>
				<th><center>Date</center></th>
				<th><center>Reason</center></th>
				<th><center>Amount</center></th>
			</tr>
		</thead>

		<tbody>

			<%
				int i = 1;
				if (session.getAttribute("MaintenceList") != null) {
					List<Maintenenece> list = (List<Maintenenece>) session.getAttribute("MaintenceList");
			%>

			<%
				for (Maintenenece temp : list) {
						DateFormat date = new SimpleDateFormat("dd/MM/yyyy");
						String df = date.format(temp.getDate());
			%>
			<tr>
				<td><%=i%></td>
				<td><%=temp.getVechileNo()%></td>
				<td><%=temp.getVechileType()%></td>
				<td><%=df%></td>
				<td><%=temp.getReason()%></td>
				<td><%=temp.getAmount()%></td>

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