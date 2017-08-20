

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
 * Servlet implementation class addhostelservlet
 */
@WebServlet("/addhostelservlet")
public class addhostelservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addhostelservlet() {
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
        String hostelname = request.getParameter("hostelname");
        String hostelid = request.getParameter("hostelid");
        if(validate.validateHostel(hostelid))	
        {

	           String message1="The Hostel With this Id already exist";
	           request.setAttribute("message1", message1);
	           RequestDispatcher rs = request.getRequestDispatcher("addhostel.jsp");
	           rs.include(request, response);
	           return;
	   }
            
       
		else
		{
       
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HostelAllotementDB","root", "saurabh");
			// validating that rollno is available in database or not
			
			    	  PreparedStatement ps = con.prepareStatement("insert into  hostel values(?,?)");

			            ps.setString(1, hostelid);
			            ps.setString(2, hostelname);
			            
			            int i = ps.executeUpdate();
			           
			            if (i > 0) {
			            	String message="Hostel is added successfuly";
					           request.setAttribute("message", message);
					           RequestDispatcher rs = request.getRequestDispatcher("addhostel.jsp");
					           rs.include(request, response);
			            }
			            else
			            {
			            	
			            }
			    
        } 
        catch (Exception e2) 
        {
        	
            System.out.println(e2);
        }

        out.close();
	}
	}
}
