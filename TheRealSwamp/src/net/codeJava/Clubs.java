package net.codeJava;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Clubs
 */
@WebServlet("/Clubs")
public class Clubs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Clubs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{  
			  
			response.setContentType("text/html");  
			PrintWriter out=response.getWriter();  
			  
			ServletContext context=getServletContext();  
			context.setAttribute("company","IBM");  
			String n=(String)context.getAttribute("company");  
			  
			out.println("Welcome to "+n);  
			out.close();  
			out.println("Welcome to first servlet");  
			out.println("<a href='servlet2'>visit</a>");  
			out.close();  
			  
			}catch(Exception e){
				System.out.println(e);}  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);response.sendRedirect(request.getContextPath()+ "/Clubs");
		
	}

}
