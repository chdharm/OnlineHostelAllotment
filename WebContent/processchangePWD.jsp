<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<% String username = (String)session.getAttribute("username"); %>
<%
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");


Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/hostelallotementdb";
con = DriverManager.getConnection(url, "root", "saurabh");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from student_register where password= '"+ OldPassword + "'");
if (rs.next()) { 
pass = rs.getString("password");
} 
if(Newpass.equals(conpass))
{
if (pass.equals(OldPassword)) {
st = con.createStatement();

int i = st.executeUpdate("update student_register set password='"+ Newpass + "' where username='"+username+"';" );
out.println("Password changed successfully");
st.close();
con.close();
} else {
out.println("Old Password doesn't match");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/
}
} catch (Exception e) {
out.println(e);
}
%>