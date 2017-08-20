import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class validate {

	public static boolean validateHostel(String hostelid) 
    {
     boolean st =false;
     try{

	 //loading drivers for mysql
        Class.forName("com.mysql.cj.jdbc.Driver");

	 //creating connection with the database 
        Connection con=DriverManager.getConnection
                       ("jdbc:mysql://localhost:3306/HostelAllotementDB","root", "saurabh");
        PreparedStatement ps =con.prepareStatement
                            ("select * from hostel where hostel_id=?");
        ps.setString(1, hostelid);
     ;
        ResultSet rs =ps.executeQuery();
        st = rs.next();
       
     }catch(Exception e)
     {
         e.printStackTrace();
     }
        return st;                 
 }
	
	// validating that room is allready exist or not
	public static boolean validateRoom(String roomname) 
    {
     boolean st =false;
     try{

	 //loading drivers for mysql
        Class.forName("com.mysql.cj.jdbc.Driver");

	 //creating connection with the database 
        Connection con=DriverManager.getConnection
                       ("jdbc:mysql://localhost:3306/HostelAllotementDB","root", "saurabh");
        PreparedStatement ps =con.prepareStatement
                            ("select * from hostelroom where roomname=?");
        ps.setString(1, roomname);
     
        ResultSet rs =ps.executeQuery();
        st = rs.next();
       
     }catch(Exception e)
     {
         e.printStackTrace();
     }
        return st;                 
 }//allready exist close
	
	public static boolean validateStudentExist(String rollno) 
    {
     boolean st =false;
     try{

	 //loading drivers for mysql
        Class.forName("com.mysql.cj.jdbc.Driver");

	 //creating connection with the database 
        Connection con=DriverManager.getConnection
                       ("jdbc:mysql://localhost:3306/HostelAllotementDB","root", "saurabh");
        PreparedStatement ps =con.prepareStatement
                            ("select * from studentrecord where rollno=?");
        ps.setString(1, rollno);
     
        ResultSet rs =ps.executeQuery();
        st = rs.next();
       
     }catch(Exception e)
     {
         e.printStackTrace();
     }
        return st;                 
 }   
}
