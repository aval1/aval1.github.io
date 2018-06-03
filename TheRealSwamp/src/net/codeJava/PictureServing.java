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


/**
 * Servlet implementation class Home
 */
@WebServlet("/PictureServing")
public class PictureServing extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PictureServing() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    response.setContentType("image/jpeg");  
	    ServletOutputStream out;  
	    out = response.getOutputStream();  
	    FileInputStream fin = new FileInputStream("C:\\Users\\aval9\\Pictures\\wave.jpg");  
	      
	    BufferedInputStream bin = new BufferedInputStream(fin);  
	    BufferedOutputStream bout = new BufferedOutputStream(out);  
	    int ch =0; ;  
	    while((ch=bin.read())!=-1)  
	    {  
	    bout.write(ch);  
	    }  
	      
	    bin.close();  
	    fin.close();  
	    bout.close();  
	    out.close(); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		request.getRequestDispatcher("/jsps/home.jsp").forward(request, response);

	}

}
