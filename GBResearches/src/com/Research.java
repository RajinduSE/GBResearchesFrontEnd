package com;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.Part;

public class Research {
	public Connection connect()
	{ 
		 Connection con = null; 
		 
		 try { 
			 Class.forName("com.mysql.jdbc.Driver"); 
			 con= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/gb_researches_client", "root", ""); 
			 //For testing
			 System.out.print("Successfully connected"); 
		} catch(Exception e){ 
			 e.printStackTrace(); 
		} 
		return con; 
	}
	
	public String addResearch(String title, String author, String catergory, int year, Part file) {
		String output = ""; 
		try { 
			Connection con = connect(); 
			if (con == null) 
			{ 
				return "Error while connecting to the database"; 
			} 
			// create a prepared statement
			String query = "insert into researches(`title`,`author`,`catergory`,`year`,`status`,`file`) values (?,?,?,?,?,?)"; 
			PreparedStatement preparedStmt = con.prepareStatement(query); 
			 
			preparedStmt.setString(1, title);
			preparedStmt.setString(2, author);
			preparedStmt.setString(3, catergory);
			preparedStmt.setInt(4, year);
			preparedStmt.setBoolean(5, false);
			
			InputStream is = file.getInputStream();
			preparedStmt.setBlob(6, is);			
			 
			//execute the statement
			 preparedStmt.execute(); 
			 con.close(); 

			 String researches = readResearchesUser();
			 output = "{\"status\":\"success\", \"data\": \"" + researches + "\"}";
		}catch (Exception e) { 
			 output = "{\"status\":\"error\", \"data\": \"Error while inserting the research.\"}";
			 System.err.println(e.getMessage()); 
		} 
		return output;
	}
	
	public String readResearchesUser() {
		String output = "";
		try {
			Connection con = connect();
			if(con == null) {
				return "Error while connecting to the database";
			}
			
			output = "<table border='1' class='table table-bordered'>"
					+ "<tr>"
					+ "<th>Research Title</th>"
					+ "<th>Author</th>"
					+ "<th>Catergory</th>"
					+ "<th>Year</th>"
					+ "<th>Update</th>"
					+ "<th>Delete</th>"
					+ "</tr>";
			
			String query = "select * from researches";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			// iterate through the rows in the result set
			while(rs.next()) {
				String researchId = Integer.toString(rs.getInt("id"));
				String title = rs.getString("title");
				String author = rs.getString("author");
				String catergory = rs.getString("catergory");
				String year = Integer.toString(rs.getInt("year"));
					
				//add a row into html table
				output += "<tr>";
				output += "<td>" + title  + "</td>";
				output += "<td>" + author  + "</td>";
				output += "<td>" + catergory + "</td>";
				output += "<td>" + year  + "</td>";
	
				//buttons
				 output += "<td><input name='btnUpdate' type='button' value='Update' class='btnUpdate btn btn-success' data-researchid='" + researchId + "'></td>"
						 + "<td><input name='btnRemove' type='button' value='Remove' class='btnRemove btn btn-danger' data-researchid='" + researchId + "'></td></tr>";
				
			}
			
			con.close();
			output += "</table>";
			
		}catch(Exception e) {
			output = "Error while reading";
			System.out.println(e.getMessage());
		}
		return output;
	}
	
	public String updateResearch(int researchId, String title, String author, String catergory, int year, Part file) {
		String output = ""; 
		try { 
			Connection con = connect(); 
			if (con == null) 
			{ 
				return "Error while connecting to the database"; 
			} 
			// create a prepared statement
			String query = "update researches set title = ?,author = ?,catergory = ?,year=?, file=? where id = ?"; 
			PreparedStatement preparedStmt = con.prepareStatement(query); 
			 // binding values 
			 preparedStmt.setString(1, title); 
			 preparedStmt.setString(2, author); 
			 preparedStmt.setString(3, catergory); 
			 preparedStmt.setInt(4, year);
			 
			 InputStream is = file.getInputStream();
			 preparedStmt.setBlob(5, is);
			 
			 preparedStmt.setInt(6, researchId);
			 
			//execute the statement
			 preparedStmt.execute(); 
			 con.close(); 
			 String researches = readResearchesUser();
			 output = "{\"status\":\"success\", \"data\": \"" + researches + "\"}";
		}catch (Exception e) { 
			output = "{\"status\":\"error\", \"data\": \"Error while updating the research.\"}"; 
			 System.err.println(e.getMessage()); 
		} 
		return output;
	}
	
	public String deleteResearch(int researchId)
	{ 
		 String output = ""; 
		 try
		 { 
			 Connection con = connect(); 
			 if (con == null) 
			 { 
				 return "Error while connecting to the database for deleting."; 
			 } 
			 // create a prepared statement
			 String query = "delete from researches where id=?"; 
			 PreparedStatement preparedStmt = con.prepareStatement(query); 
			 
			 // binding values
			 preparedStmt.setInt(1, researchId); 
			 
			 // execute the statement
			 preparedStmt.execute(); 
			 con.close(); 
			 String researches = readResearchesUser();
		     output = "{\"status\":\"success\", \"data\": \"" + researches + "\"}"; 
		} 
		catch (Exception e) 
		{ 
			output = "{\"status\":\"error\", \"data\": \"Error while deleting the research.\"}"; 
			System.err.println(e.getMessage()); 
		} 
		return output;
	}
	
	/* These three methods used in group project to approve, download, view pending approvals for the administrator. Since inter-service communication not used in this project
	 * these methods are not used 
	public String approveResearch(int researchId) {
		String output = ""; 
		try { 
			Connection con = connect(); 
			if (con == null) 
			{ 
				return "Error while connecting to the database"; 
			} 
			// create a prepared statement
			String query = "update researches set status = ? where id = ?"; 
			PreparedStatement preparedStmt = con.prepareStatement(query); 
			 // binding values 
			 preparedStmt.setBoolean(1, true);
			 preparedStmt.setInt(2, researchId);
			 
			//execute the statement
			 preparedStmt.execute(); 
			 con.close(); 
			 output = "Approved";
		}catch (Exception e) { 
			 output = "Error while approving"; 
			 System.err.println(e.getMessage()); 
		} 
		return output;
	}
	
	public String readResearchesAdmin() {
		String output = "";
		try {
			Connection con = connect();
			if(con == null) {
				return "Error while connecting to the database";
			}
			
			output = "<table border='1'>"
					+ "<tr>"
					+ "<th>Research Title</th>"
					+ "<th>Author</th>"
					+ "<th>Catergory</th>"
					+ "<th>Year</th>"
					+ "<th>Action</th>"
					+ "<th>Download</th>"
					+ "</tr>";
			
			String query = "select * from researches where status = 0";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			// iterate through the rows in the result set
			while(rs.next()) {
				String researchId = Integer.toString(rs.getInt("id"));
				String title = rs.getString("title");
				String author = rs.getString("author");
				String catergory = rs.getString("catergory");
				String year = Integer.toString(rs.getInt("year"));
					
				//add a row into html table
				output += "<tr>";
				output += "<td>" + title  + "</td>";
				output += "<td>" + author  + "</td>";
				output += "<td>" + catergory + "</td>";
				output += "<td>" + year  + "</td>";
	
				//buttons
				output += "<td><form method='post' action='#'>" 
						 + "<input name='btnApprove' type='submit' value='Approve'>"
						 + "<input name='researchId' type='hidden' value='" + researchId + "'>" 
						 + "</form></td>"
						 + "<td><form method='post' action='#'>" 
						 + "<input name='btnDownload' type='submit' value='Download'>"
						 + "<input name='researchId' type='hidden' value='" + researchId + "'>" 
						 + "</form></td></tr>";
				
			}
			
			con.close();
			output += "</table>";
			
		}catch(Exception e) {
			output = "Error while reading";
			System.out.println(e.getMessage());
		}
		return output;
	}
	
	public String downloadResearch(int researchId, String path, String fileName) {
		String result = "";
		try {
			Connection con = connect();
			if(con == null) {
				return "Error while connecting to the database";
			}
			
			String query = "select file from researches where id = " + "'" + researchId + "'";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			File theFile = new File(path);
			FileOutputStream output = new FileOutputStream(theFile + fileName);
			
			// iterate through the rows in the result set
			while(rs.next()) {
				InputStream input = rs.getBinaryStream("file"); 
				
				byte[] buffer = new byte[1024];
				while (input.read(buffer) > 0) {
					output.write(buffer);
				}
				
			}
			con.close();
			result = "Downloaded Successfully " + theFile.getAbsolutePath();
		}catch(Exception e) {
			result = "Error while reading";
			System.out.println(e.getMessage());
		}
		return result;
	}
	*/
}
