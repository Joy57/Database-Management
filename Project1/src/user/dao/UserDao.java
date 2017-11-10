package user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import user.domain.User;
import user.domain.paper;


public class UserDao {
	
	
	/**
	 * get the search result with username 
	 * @param username
	 * @return
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public User findByUsername(String username) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		User user = new User();
		try {
			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection connect = DriverManager
			          .getConnection("jdbc:mysql://localhost:3306/csc4710?"
				              + "user=root&password=pass123");
		    String sql = "select * from tb_user where username=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,username);
		    ResultSet resultSet = preparestatement.executeQuery();
		    //ResultSet resultSet  = preparestatement.executeUpdate();
		    while(resultSet.next()){
		    	String user_name = resultSet.getString("username");
		    	if(user_name.equals(username)){
		    		user.setUsername(resultSet.getString("username"));
		    		user.setPassword(resultSet.getString("password"));
		    		user.setEmail(resultSet.getString("email"));
		    		
		    	}
		    }
		
		    
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return user;
	}
	
	
	
	
	
	
	/**
	 * insert User
	 * @param user
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void add(User user) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection connect = DriverManager
			          .getConnection("jdbc:mysql://localhost:3306/csc4710?"
				              + "user=root&password=pass123");
			
			
			String sql = "insert into tb_user values(?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,user.getUsername());
		    preparestatement.setString(2,user.getPassword());
		    preparestatement.setString(3,user.getEmail());
		    preparestatement.executeUpdate();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public List<Object> findall() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		List<Object> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection connect = DriverManager
			          .getConnection("jdbc:mysql://localhost:3306/csc4710?"
				              + "user=root&password=pass123");
			  
			
			String sql = "select * from tb_user";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			ResultSet resultSet = preparestatement.executeQuery();
			//ResultSet rs = preparestatement.executeQuery("SELECT * FROM paper");
			while(resultSet.next()){
				User user = new User();
				user.setUsername(resultSet.getString("username"));
	    		user.setPassword(resultSet.getString("password"));
	    		user.setEmail(resultSet.getString("email"));
	    		list.add(user);
			 }
//			while (rs.next()) {
//				User paper = new User();
//	            paper.setId (rs.getInt("paperID"));
//	            paper.setTitle(rs.getString("title"));
//	            paper.setAbstract(rs.getString("Abstract"));
//	            paper.setPDF(rs.getString("PDF"));
//	            //System.out.println(paperID+"   "+title+"    "+Abstract+"    "+pdf);
//	         }
			 
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return list;
		
	}
	
	
	public List<Object> findPaperall() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		List<Object> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection connect = DriverManager
			          .getConnection("jdbc:mysql://localhost:3306/csc4710?"
				              + "user=root&password=pass123");
			
			String InsertQuery="insert into paper(paperID,title,Abstract,pdf) values(11,'titleX','AbstractXX','pdfxxx');";
			  Statement stat = null;
			  stat=connect.createStatement();
			    try 
			    {
			        stat.executeUpdate(InsertQuery);
			        System.out.println("Record Inserted to database successfully.");
			    }
			    catch(SQLException e)
			    {
			        System.out.println("Unable to Insert Record to database.");
			    }
			
			String sql = "select * from paper";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			//ResultSet resultSet = preparestatement.executeQuery();
			ResultSet rs = preparestatement.executeQuery();
//			while(resultSet.next()){
//				User user = new User();
//				user.setUsername(resultSet.getString("username"));
//	    		user.setPassword(resultSet.getString("password"));
//	    		user.setEmail(resultSet.getString("email"));
//	    		list.add(user);
//			 }
			while (rs.next()) {
				paper paper1 = new paper();
	            paper1.setPaperID (rs.getInt("paperID"));
	            paper1.setTitle(rs.getString("title"));
	            paper1.setAbstracts(rs.getString("Abstract"));
	            paper1.setPdf(rs.getString("pdf"));
	            list.add(paper1);
	            
	         }
			 
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return list;
		
	}
		
}
