package web.com;

import java.sql.*;
import java.util.*;

public class BlogController {
	public static Connection getConnection() {
		Connection connect = null;
		String urlConnect = "jdbc:mysql://localhost:3306/web_java_blog?useSSL=false";
		String username = "root";
		String password = "admin";
		String driverClass = "com.mysql.cj.jdbc.Driver";
		
		try {
			Class.forName(driverClass);
			connect = DriverManager.getConnection(urlConnect,username,password);
		}catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return connect;
	}
	
	public List<Blog_post> getAllBook() {
		String sql = "SELECT * FROM blogs";
		Connection connect = getConnection();
		
		
		List<Blog_post> blogs = new ArrayList<Blog_post>();
		ResultSet rs = null;
		
		try {
			Statement statement = connect.createStatement();
			rs = statement.executeQuery(sql);
			
			while(rs.next()) {
				Blog_post blog = new Blog_post(rs.getInt("id"),
						rs.getInt("author_id"),
						rs.getString("title"),
						rs.getString("description"),
						rs.getBoolean("is_public"),
						rs.getString("author_name"));
				blogs.add(blog);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {connect.close();}catch(SQLException e) {e.printStackTrace();};
			try {rs.close();}catch(SQLException e) {e.printStackTrace();};
		}
		
		return blogs;
		
	}
}
