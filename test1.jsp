<%@ page import="java.sql.*" contentType="text/html; charset=utf-8"%>
<%  	 
	 String DB_URL = "jdbc:mysql://54.180.106.226:23306/test";
         String DB_USER = "root";
         String DB_PASSWORD= "password";

         ResultSet rs = null;

         Connection conn;

         Statement stmt;

	 try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
                stmt = conn.createStatement();
                conn.close();
                out.println("MySQL Connection Success!");
	 }catch(Exception e){
		out.println("errrror");
             	out.println(e);
	      
              e.printStackTrace();
         }
%>
