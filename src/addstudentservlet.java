

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addstudentservlet
 */
@WebServlet("/addstudentservlet")
public class addstudentservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addstudentservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		    response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	        
	        String rollno = request.getParameter("rollno");
	        String name = request.getParameter("name");
	        String gender = request.getParameter("gender");
	        String branch = request.getParameter("branch");
	        String year = request.getParameter("year");
	        String requested="0";
	        String Alloted="0";
	        if(validate.validateStudentExist(rollno))	
	        {

		           String message2="This Student is Allready Exist";
		           request.setAttribute("message2", message2);
		           RequestDispatcher rs = request.getRequestDispatcher("addstudent.jsp");
		           rs.include(request, response);
		           return;
		   }
	        else
	        {
	         
	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");
	        	
				java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HostelAllotementDB","root", "saurabh");
			
				 System.out.println("line1");
			      PreparedStatement ps1 = con.prepareStatement("insert into studentrecord values(?,?,?,?,?,?,?)");
			      System.out.println("line2");
				            ps1.setString(1, rollno);
				            ps1.setString(2, name);
				            ps1.setString(3, gender);
				            ps1.setString(4, branch);
				            ps1.setString(5, year);
				            ps1.setString(6, requested);
				            ps1.setString(7, Alloted);

				            System.out.println("line3");
				            int i = ps1.executeUpdate();
				            System.out.println("line4");
				            if (i > 0 ) {
				            	 System.out.println("line5");
				            	String message1="successfuly Entered";
						           request.setAttribute("message1", message1);
						           RequestDispatcher rs = request.getRequestDispatcher("addstudent.jsp");
						           rs.include(request, response);
				            }
				          
				   
	        } catch (Exception e2) {
	        	 System.out.println("hello");
	            System.out.println(e2);
	        }

	        out.close();
	  }
	}
}
