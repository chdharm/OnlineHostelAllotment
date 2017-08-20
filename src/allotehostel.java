
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class allotehostel
 */
@WebServlet("/allotehostel")
public class allotehostel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public allotehostel() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String branch = request.getParameter("branch");
		String no = request.getParameter("no");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HostelAllotementDB",
					"root", "saurabh");

			ResultSet resultSet = null;

			Statement statement1 = con.createStatement();
			Statement statement2 = con.createStatement();
			Statement statement3 = con.createStatement();
			Statement statement4 = con.createStatement();

			String sql = "SELECT rollno,partenerrollno FROM applyhostel where branch ='" + branch
					+ "' order by marks desc limit '"+no+"'";

			resultSet = statement1.executeQuery(sql);
			String randomroom = null;

			while (resultSet.next()) {

				int rollno = resultSet.getInt("rollno");
				int partenerrollno = resultSet.getInt("partenerrollno");
				PreparedStatement ps1 = con.prepareStatement(
						"select roomname from hostelroom where roomstatus!='1' order by rand() limit 1");
				ResultSet rs1 = ps1.executeQuery();

				while (rs1.next()) {
					randomroom = rs1.getString("roomname");

				}
				String query1 = "update applyhostel set allotedroom='" + randomroom + "'  where rollno='" + rollno
						+ "'";
				String query2 = "update hostelroom set roomstatus='1' where roomname = '" + randomroom + "'";
				String query3 = "update studentrecord set alloted='1' where rollno='" + rollno + "' or rollno='"
						+ partenerrollno + "'";

				int i = statement2.executeUpdate(query1);
				int j = statement3.executeUpdate(query2);
				int k = statement4.executeUpdate(query3);

				System.out.println();
			}

		} catch (Exception e2) {
			System.out.println(e2);
		}
	}

}
