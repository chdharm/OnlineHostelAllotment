

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteroomservlet
 */
@WebServlet("/deleteroomservlet")
public class deleteroomservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteroomservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String roomname=request.getParameter("roomname");
        String hostelname=request.getParameter("hostelname"); 
        if(validate.validateRoom(roomname))	
        {
       
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HostelAllotementDB","root", "saurabh");
			
			
			   //creating statement object
		    
		    Statement stm = con.createStatement();
		    
		    int i=0;
		        
		         // 2. to delete
		    
		    	
		   
		          String query1 = "delete from hostelroom where roomname = '"+roomname+"'";
		         i= stm.executeUpdate(query1);
		           
		            if (i > 0) {
		            	String message="Room is Deleted successfuly";
				           request.setAttribute("message", message);
				           RequestDispatcher rs = request.getRequestDispatcher("deleteroom.jsp");
				           rs.include(request, response);
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
        else
        {
        	 String message1="This Room  Does Not Exist Please Enter the Valid Room Name";
	           request.setAttribute("message1", message1);
	           RequestDispatcher rs = request.getRequestDispatcher("deleteroom.jsp");
	           rs.include(request, response);
	           return;
        }
	}

}
