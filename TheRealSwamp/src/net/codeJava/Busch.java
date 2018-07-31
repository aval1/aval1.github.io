package net.codeJava;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class Busch
 */
@WebServlet("/Busch")
public class Busch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final String DB_URL = "jdbc:mysql://127.0.0.1:3307/sakila"; 
	static final String USER = "root";
	static final String PASS = "root";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Busch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int ids = 0;
		String item = null;
		String rating = null;
		String votes = null;
		float average = 0;
		String value = "0";
		String value2 = "0";
		String submit = request.getParameter("submit");
		

		if("submit".equals(submit)) {
			value=request.getParameter("stars");
			value2=request.getParameter("stars1");
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
		}
		rs.close();
		stmt.close();
		conn.close();
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		request.setAttribute("ids", ids);
	    request.setAttribute("item", item);
	    request.setAttribute("rating", rating);
	    request.setAttribute("votes", votes);
	    request.setAttribute("average", average);
	    request.setAttribute("value",value);
	    request.setAttribute("value2",value2);
		}
	   
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/jsps/busch.jsp").forward(request, response);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*int idPost =Integer.parseInt(request.getParameter("ids"));
		String itemPost =request.getParameter("item");
		int ratingPost =Integer.parseInt(request.getParameter("rating"));
		int votePost =Integer.parseInt(request.getParameter("votes"));
		int averagePost =Integer.parseInt(request.getParameter("average"));*/
		//String value = request.getParameter("stars");
		
		//request.setAttribute("value",value);

	}
}
