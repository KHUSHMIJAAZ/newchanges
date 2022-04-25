package com.indranil.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.indranil.web.model.Admin;
import com.indranil.web.model.Inventory;
import com.indranil.web.model.User;
import com.indranil.web.model.Userlist;

public class InventoryDao {
	
	private String sqlurl = "jdbc:mysql://localhost:3306/shoppingcart";
	private String sqluser = "root";
	private String sqlpass = "Mumbai@3333";
	private String searchQuery2 = "SELECT * FROM users";
	private String deleteQuery1 = "delete from users where username = ?";
	private String updateQuery2 = "SELECT * FROM users";	
	private String searchQuery = "SELECT * FROM inventory WHERE username=?";
	private String createQuery = "INSERT INTO inventory(username) VALUES(?)";
	
	public void addInventory(String username, Map<String, Integer> items) {
		
		try(Connection con = getConnection()) {
			for(Map.Entry<String, Integer> entry : items.entrySet()) {
				String item = entry.getKey();
				String updateQuery = "UPDATE inventory SET " + item + "=" + item +
				"+ ? WHERE username=?";
				try(PreparedStatement st = con.prepareStatement(updateQuery)) {
					st.setInt(1, entry.getValue());
					st.setString(2, username);
					st.executeUpdate();
				}
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Admin> getInventories() {
		
		List<Admin> admin =  new ArrayList<>();
		try {
				Connection con = getConnection();
				
			PreparedStatement st = con.prepareStatement(searchQuery2);
				ResultSet	rs = st.executeQuery();	
			
			
			
			
			 
				
				
				while(rs.next() ) {
					Admin admin1 = new Admin();
					admin1.setUserid(rs.getString("username"));
					admin1.setPwd(rs.getString("password"));
					
					
					admin.add(admin1);
					
				}
				return  admin;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
public List<Admin> getInventories1(String userid ) {
		
		List<Admin> admin =  new ArrayList<>();
		try {
			
		
			Connection con = getConnection();
			
			String deleteQuery = "delete from users "  +
					" WHERE username="  + "'" + userid + "'"  ;
					try(PreparedStatement st = con.prepareStatement(deleteQuery)) {
						
						st.execute(deleteQuery);
			
			
			
			
			 
					}
				
				
				return  admin;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Inventory getInventory(String username) {
		addUserInventory(username);
		
		try(Connection con = getConnection();
			PreparedStatement st = con.prepareStatement(searchQuery)) {
			Inventory inventory = new Inventory();
			Map<String, Integer> items = new HashMap<>();
			
			st.setString(1, username);
			
			try(ResultSet rs = st.executeQuery()) {
				if(rs.next()) {
					items.put("item1", rs.getInt("item1"));
					items.put("item2", rs.getInt("item2"));
					items.put("item3", rs.getInt("item3"));
					items.put("item4", rs.getInt("item4"));
					items.put("item5", rs.getInt("item5"));
					items.put("item6", rs.getInt("item6"));
					inventory.setItems(items);
					return inventory;
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void addUserInventory(String username) {
		try(Connection con = getConnection()) {
			try(PreparedStatement st = con.prepareStatement(searchQuery)) {
				st.setString(1, username);
			
				try(ResultSet rs = st.executeQuery()) {
					if(rs.next()) 
						return;
				}
			}
			
			try(PreparedStatement st = con.prepareStatement(createQuery)) {
				st.setString(1, username);
				st.executeUpdate();
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(sqlurl, sqluser, sqlpass);
			return con;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
