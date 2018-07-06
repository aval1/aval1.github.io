package net.codeJava;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;


/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://127.0.0.1:3307/sakila"; 
	static final String USER = "root";
	static final String PASS = "root";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//If user logged in then redirect to the portfolio page else display jsp
		if(request.getSession().getAttribute("username")!=null) {
			response.sendRedirect(request.getContextPath() + "/portfolio");
		} else {
			request.getRequestDispatcher("/jsps/home.jsp").forward(request, response);
		}
		//request.getRequestDispatcher("/jsps/js/slideshow.js").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Get params
		String button=request.getParameter("button");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		if("button1".equals(button)) {
			System.out.print("this button clearly works");
			
			 Connection conn = null;
			 PreparedStatement stmt = null;
			 
			 try{
			      Class.forName("com.mysql.jdbc.Driver");
			      conn = DriverManager.getConnection(DB_URL,USER,PASS);
			      
			      //Check database for entry corresponding to the login info inputted
			      String sql;
			      sql = "SELECT * FROM Rating	 WHERE Rating='" + username + "'AND Average='" + password + "'";
			      stmt=conn.prepareStatement(sql);
			      ResultSet rs=stmt.executeQuery();
			      
			      //If found return success and redirect to portfolio
			      if(rs.next()) {
			    	  request.setAttribute("success",true);
			    	  HttpSession session=request.getSession();
			    	  session.setAttribute("username", username);
			    	  response.sendRedirect(request.getContextPath() + "/Busch");
			      } 
			      
			      //Not found return failure and display jsp
			      else {
			    	  request.setAttribute("success",false);
			    	  request.getRequestDispatcher("/jsps/home.jsp").forward(request, response);
			      }
			      rs.close();
			      stmt.close();
			      conn.close();
			      
			      
			   }
			 	catch(SQLException se){
			      se.printStackTrace();
			      request.setAttribute("success",false);
			      request.getRequestDispatcher("/jsps/home.jsp").forward(request, response);	
			   }
			 	catch(Exception e){
			      e.printStackTrace();
			   }
			 	finally{
			      try{
			         if(stmt!=null)
			            stmt.close();
			      }
			      catch(SQLException se2){
			      }
			      try{
			         if(conn!=null)
			            conn.close();
			      }
			      
			      catch(SQLException se){
			         se.printStackTrace();
			      }
			   }
		}
	}
	
	//Method used in the testing script simulate login
	public boolean loginTest(String username, String password) {
		Connection conn = null;
		 PreparedStatement stmt = null;
		 
		 try{
		      Class.forName("com.mysql.jdbc.Driver");

		      conn = DriverManager.getConnection(DB_URL,USER,PASS);
		      System.out.print("Made it here");
		      //Check database for entry corresponding to the login info inputted
		      String sql;
		      sql = "SELECT * FROM ratings WHERE Rating='" + username + "'AND Average='" + password + "'";
		      stmt=conn.prepareStatement(sql);
		      ResultSet rs=stmt.executeQuery();
		      
		      //If found return true
		      if(rs.next()) {
		    	  rs.close();
			      stmt.close();
			      conn.close();
		    	  return true;
		    	  
		      } 
		      
		      else {
		    	  rs.close();
			      stmt.close();
			      conn.close();
		    	  return false;
		      }
		
		   	      
		   }
		 	catch(SQLException se){
		      se.printStackTrace();
	
		   }
		 	catch(Exception e){
		      e.printStackTrace();
		   }
		 	finally{
		      try{
		         if(stmt!=null)
		            stmt.close();
		      }
		      catch(SQLException se2){
		      }
		      try{
		         if(conn!=null)
		            conn.close();
		      }
		      
		      catch(SQLException se){
		         se.printStackTrace();
		      }
		   }
		 
		 return false;
	}

}
