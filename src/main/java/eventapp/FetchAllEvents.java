package eventapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/eventAll")

public class FetchAllEvents extends HttpServlet
{
	@Override
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_manage_system", "root", "root");
			PreparedStatement ps=con.prepareStatement("select * from event ");
			ResultSet rs=ps.executeQuery();
			req.setAttribute("rs",rs);
			RequestDispatcher rd=req.getRequestDispatcher("allevent.jsp");
			rd.forward(req, resp);
			rs.close();
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

}
