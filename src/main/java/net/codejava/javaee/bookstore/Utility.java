package net.codejava.javaee.bookstore;

import java.sql.Connection;

public class Utility {
	
	public static Connection getMySqlDBConnection() throws Exception {
		
		Connection theConn = DBAccess.createMySqlConnection();
		
		return theConn;
		
	}
	
	/*
	public static Connection getMicrosoftSqlDBConnection() throws Exception {
		
		Connection theConn = DBAccess.createMicrosoftSqlConnection();
		
		return theConn;
		
	}
	*/

}
