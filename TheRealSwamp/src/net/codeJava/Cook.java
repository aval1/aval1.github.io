package net.codeJava;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Cook
 */
@WebServlet("/Cook")
public class Cook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final String DB_URL = "jdbc:mysql://127.0.0.1:3307/sakila"; 
	static final String USER = "root";
	static final String PASS = "root";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*int ids = 0;
		String item = null;
		String rating = null;
		String votes = null;
		float average = 0;
		System.out.println("HELPP");
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://127.0.0.1:3307/sakila";
		String username="root";
		String password="root";
		String query="select * from ratings";
		Connection conn=DriverManager.getConnection(url, username, password);
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(query);
		while(rs.next())
		{
		ids = rs.getInt("ID");
		item = rs.getString("Item");
		rating = rs.getString("Rating");
		votes = rs.getString("Votes");
		average = rs.getFloat("Average");
		request.setAttribute("ids", ids);
	    request.setAttribute("item", item);
	    request.setAttribute("rating", rating);
	    request.setAttribute("votes", votes);
	    request.setAttribute("average", average);
		}
		rs.close();
		stmt.close();
		conn.close();
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}*/
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/jsps/cook.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	

}
