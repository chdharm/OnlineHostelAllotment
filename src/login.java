

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
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out = response.getWriter();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
		   String logintype = request.getParameter("logintype");
		   if(logintype==null){
			   

	           String message="please select any logintype";
	           request.setAttribute("message", message);
	            RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
	            rs.forward(request, response); 
		   }
		
			  
			
			if(validatestudent.checkUser(username, password) && logintype.equals("student")  )	
		        {
		        	// session checking
		        	HttpSession session = request.getSession();
		        	session.setAttribute("username", username);
		        	request.setAttribute("username", username);
		        	
		            RequestDispatcher rs = request.getRequestDispatcher("home.jsp");
		            rs.forward(request, response);
		        	
		        }
			else if(validatewarden.checkUser(username, password) && logintype.equals("Warden")  )
			{
				// session checking
	        	HttpSession session = request.getSession();
	        	session.setAttribute("username", username);
	        	request.setAttribute("username", username);
	        	
	            RequestDispatcher rs = request.getRequestDispatcher("wardenhome.jsp");
	            rs.forward(request, response);
			}
			else if(validateDSW.checkUser(username, password) && logintype.equals("Admin")  )
			{
				// session checking
	        	HttpSession session = request.getSession();
	        	session.setAttribute("username", username);
	        	request.setAttribute("username", username);
	        	
	            RequestDispatcher rs = request.getRequestDispatcher("admin1.jsp");
	            rs.forward(request, response);
			}
		        else
		        {
		           String message="Username or Password incorrect";
		           request.setAttribute("message", message);
		           RequestDispatcher rs = request.getRequestDispatcher("loginregister.jsp");
		           rs.include(request, response);
		        }

		
	}

}
