import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String year = request.getParameter("year");
        String branch = request.getParameter("branch");
        String password=request.getParameter("password");
        
        
        // validating that rollno is available in database or not
		if(validatestudent.checkStudentExist(username))	
        {
			 String message1="you  have already registered";
	           request.setAttribute("message1", message1);
	           RequestDispatcher rs = request.getRequestDispatcher("loginregister.jsp");
	           rs.include(request, response);
	           return;
           
        }
	
		    
       
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HostelAllotementDB","root", "saurabh");

            PreparedStatement ps = con.prepareStatement("insert into student_register values(?,?,?,?,?)");

            ps.setString(1, username);
            ps.setString(2, name);
            ps.setString(3, year);
            ps.setString(4, branch);
            ps.setString(5, password);

            int i = ps.executeUpdate();
            if (i > 0) {
               String message2="you  have successfully registered now you can login and apply for hostel";
 	           request.setAttribute("message2", message2);
 	           RequestDispatcher rs = request.getRequestDispatcher("loginregister.jsp");
 	           rs.include(request, response);
 	           return;
            }
            else
            {
            	
            }

        } catch (Exception e2) {
            System.out.println(e2);
        }

        out.close();
    }
}

