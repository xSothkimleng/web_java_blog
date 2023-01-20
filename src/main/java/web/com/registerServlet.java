package web.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_java_blog","root","admin");
			PreparedStatement pst = con.prepareStatement("INSERT INTO users (username,password) VALUES(?,?)");
			pst.setString(1, username);
			pst.setString(2, password);
			pst.executeUpdate();
		}catch(Exception e) {	}finally {
			try {
				con.close();
				response.sendRedirect("index.jsp");
			}catch(SQLException e) {e.printStackTrace();}
		}
	}
}
