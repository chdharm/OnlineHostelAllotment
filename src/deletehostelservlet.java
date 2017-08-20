

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deletehostelservlet
 */
@WebServlet("/deletehostelservlet")
public class deletehostelservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deletehostelservlet() {
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
        String deleteby=request.getParameter("deleteby");
        
        //Variables for receiving deleteby variable value
        String hostelid=null;
        String hostelname=null;
        if(deleteby.equals("byname")){
        	   hostelname = request.getParameter("value");	
        	 // System.out.println("    name"+hostelname);
        }
        else{
        	hostelid = request.getParameter("value");
        	// System.out.println("   id"+hostelid);
        }
       
       
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HostelAllotementDB","root", "saurabh");
			
			
			   //creating statement object
		    
		    Statement stm = con.createStatement();
		    
		    int i=0;
		        
		         // 2. to delete
		    if(deleteby.equals("byname"))
		    {
		    	
		   
		          String query1 = "delete from hostel where hostel_name = '"+hostelname+"'";
		         i= stm.executeUpdate(query1);
		           
		            if (i > 0) {
		            	String message1="Hostel is Deleted successfuly";
				           request.setAttribute("message1", message1);
				           RequestDispatcher rs = request.getRequestDispatcher("deletehostel.jsp");
				           rs.include(request, response);
		            }
		    }   
		    else
		    {
		    	String query1 = "delete from hostel where hostel_id = '"+hostelid+"'";
		          i = stm.executeUpdate(query1);
		          if (i > 0) {
		            	String message1="Hostel is Deleted successfuly";
				           request.setAttribute("message1", message1);
				           RequestDispatcher rs = request.getRequestDispatcher("deletehostel.jsp");
				           rs.include(request, response);
		            }
				 
		    }
		         
		          stm.close();
		          con.close();
			    
        } 
        catch (Exception e2) 
        {
            System.out.println(e2);
        }

        out.close();
	}

}
