package web.com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/createServlet")
public class createServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int author_id =  Integer.parseInt(request.getParameter("author_id"));
		String author_name = request.getParameter("author_name");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		boolean is_public = Boolean.parseBoolean(request.getParameter("visibility"));
		
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_java_blog?useSSL=false","root","admin");
			PreparedStatement pst = con.prepareStatement("INSERT INTO blogs (author_id,author_name,title,description,is_public) VALUES(?,?,?,?,?)");
			pst.setInt(1, author_id);
			pst.setString(2, author_name);
			pst.setString(3, title);
			pst.setString(4, description);
			pst.setBoolean(5, is_public);
			pst.executeUpdate();
			response.sendRedirect("index.jsp");
		}catch(Exception e) {	
			e.printStackTrace(); 
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
