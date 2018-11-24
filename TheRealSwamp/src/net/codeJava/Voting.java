package net.codeJava;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;

/**
 * Servlet implementation class Voting
 */
@WebServlet("/Voting")
public class Voting extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final String DB_URL = "jdbc:mysql://127.0.0.1:3307/sakila"; 
	static final String USER = "root";
	static final String PASS = "root";    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Voting() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/jsps/busch.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idPost =Integer.parseInt(request.getParameter("ids"));
		String itemPost =request.getParameter("item");
		int ratingPost =Integer.parseInt(request.getParameter("rating"));
		int votePost =Integer.parseInt(request.getParameter("votes"));
		int averagePost =Integer.parseInt(request.getParameter("average"));
		//String value = request.getParameter("stars");
		
		//request.setAttribute("value",value);
		String button  = request.getParameter("Submit");
		String ratingVal = request.getParameter("stars");
		String giftName = request.getParameter("giftName");
		String username=(String) request.getSession().getAttribute("username");
		String info=request.getParameter("info");
		String location=request.getParameter("location");
		String extra =request.getParameter("extra");
		
		//User hit submit
		if("submit".equals(button)) {
			
			 Connection conn = null;
			 PreparedStatement stmt = null;
			 
			 try{
			      Class.forName("com.mysql.jdbc.Driver");

			      conn = DriverManager.getConnection(DB_URL,USER,PASS);
			      
			      //Timestamp ts=new Timestamp(System.currentTimeMillis());
			      
			      //Create a new entry in the user table
			      String sql;
			      sql = "INSERT INTO classgifts (classYear, giftName, info, location, extra)"
				      		+ "VALUES ('" + ratingVal + "', '" + giftName + "', '" + info + "', '" + location + "', '" + extra + "')";
			      stmt=conn.prepareStatement(sql);
			      stmt.executeUpdate();

			      stmt.close();
			      conn.close();
			      
		    	  request.setAttribute("success",true);
		    	
		    	  //Enter username into http session
		    	 // HttpSession session=request.getSession();
		    	  //session.setAttribute("username", username);
		    	  
		    	  //redirect to the league page
		    	  response.sendRedirect(request.getContextPath()+ "/Busch");
			      
			      
			   }catch(SQLException se){
			      se.printStackTrace();
			      request.setAttribute("success",false);
			      request.getRequestDispatcher("/jsps/busch.jsp").forward(request, response);	
			   }catch(Exception e){
			      e.printStackTrace();
			   }finally{
			      try{
			         if(stmt!=null)
			            stmt.close();
			      }catch(SQLException se2){
			      }
			      try{
			         if(conn!=null)
			            conn.close();
			      }catch(SQLException se){
			         se.printStackTrace();
			      }
			   }
		}
	}
		
	}
