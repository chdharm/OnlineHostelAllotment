<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 <% String username= (String)session.getAttribute("username"); %>

<%
String name = request.getParameter("name");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "hostelallotementdb";
String userId = "root";
String password = "saurabh";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Alloted Rooms</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Year</b></td>
<td><b>Rollno</b></td>
<td><b>Branch</b></td>
<td><b>Marks</b></td>
<td><b>Partenerrollno</b></td>
<td><b>Hostel</b></td>
<td><b>Alloted Room</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM applyhostel  where hostel=(select hostel_name from hostel where hostel_id='"+username+"') and allotedroom!=''";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("year") %></td>
<td><%=resultSet.getString("rollno") %></td>
<td><%=resultSet.getString("branch") %></td>
<td><%=resultSet.getString("marks") %></td>
<td><%=resultSet.getString("partenerrollno") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("allotedroom") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>