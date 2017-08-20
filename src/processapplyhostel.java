

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

/**
 * Servlet implementation class processapplyhostel
 */
@WebServlet("/processapplyhostel")
public class processapplyhostel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public processapplyhostel() {
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
	        String year = request.getParameter("year");
	        String rollno = request.getParameter("rollno");
	        String branch = request.getParameter("branch");
	        String marks = request.getParameter("marks");
	        
	        String partenerrollno=request.getParameter("partenerrollno");
	        String hostelchoice=request.getParameter("hostelchoice");
	       
	       System.out.println(rollno);
	       System.out.println(partenerrollno);
	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");
	        	
				java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HostelAllotementDB","root", "saurabh");
				// validating that rollno is available in database or not
				if(validatestudent.checkStudent(rollno))	
		        {
		        	
                   
		        }
				else
				{
				
				           String message="your rollno is incorrect";
				           request.setAttribute("message1", message);
				           RequestDispatcher rs = request.getRequestDispatcher("applyhostel.jsp");
				           rs.include(request, response);
				           return;
				      
				}
				// validating that partenerrollno is available in database or not
				if(validatestudent.checkStudent(partenerrollno))	
		        {
		        	
                    
		        }
				else
				{
				           String message="your partenerrollno is incorrect";
				           request.setAttribute("message2", message);
				           RequestDispatcher rs = request.getRequestDispatcher("applyhostel.jsp");
				           rs.include(request, response);
				           return;
				}
				
				
				
				PreparedStatement ps3 = con.prepareStatement("select requested from studentrecord where rollno='"+rollno+"'");
				   ResultSet rs3=ps3.executeQuery();
				   int rollnostatus=0;
				   while(rs3.next()) {
					    rollnostatus= rs3.getInt("requested");
					   
					}
				   
			    PreparedStatement ps4 = con.prepareStatement("select requested from studentrecord where rollno='"+partenerrollno+"'");
				   ResultSet rs4=ps4.executeQuery();
				   int partenerrollnostatus=0;
				   while(rs4.next()) {
					   partenerrollnostatus= rs4.getInt("requested");
					 
					}
				   //validating rollno is allready applied
				    if(rollnostatus == 1)
				    {
				    	String message="You are already applied or someone else chose you as a partner";
				           request.setAttribute("message3", message);
				           RequestDispatcher rs = request.getRequestDispatcher("applyhostel.jsp");
				           rs.include(request, response);
				    }
				  //validating partenerrollno is allready applied
				    else if(partenerrollnostatus == 1)
				    {
				    	String message="Select another because your partner is already applied";
				           request.setAttribute("message", message);
				           RequestDispatcher rs = request.getRequestDispatcher("applyhostel.jsp");
				           rs.include(request, response);
				    }
				    else
				    {
				    	  PreparedStatement ps1 = con.prepareStatement("insert into applyhostel values(?,?,?,?,?,?,?)");

				            ps1.setString(1, year);
				            ps1.setString(2, rollno);
				            ps1.setString(3, branch);
				            ps1.setString(4, marks);
				            ps1.setString(5, partenerrollno);
				            ps1.setString(6, hostelchoice);
				            ps1.setString(7, null);

				            
				            int i = ps1.executeUpdate();
				            PreparedStatement ps2 = con.prepareStatement("update studentrecord set requested='1' where rollno='"+rollno+"' or rollno='"+partenerrollno+"' ");
				            int j = ps2.executeUpdate();
				            if (i > 0 && j>0) {
				            	String message="successfuly applied for the hostel";
						           request.setAttribute("message", message);
						           RequestDispatcher rs = request.getRequestDispatcher("applyhostel.jsp");
						           rs.include(request, response);
				            }
				            else
				            {
				            	
				            }
				    }
	        } catch (Exception e2) {
	            System.out.println(e2);
	        }

	        out.close();
	}

}
