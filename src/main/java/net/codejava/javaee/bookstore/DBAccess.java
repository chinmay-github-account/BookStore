package net.codejava.javaee.bookstore;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBAccess {

	public static Connection createMySqlConnection() {
		DataSource ds = null;
		Context ctx = null;
		Connection conn = null;

		try {
			ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/MySql"); // JNDI Name
			conn = ds.getConnection();
			conn.setAutoCommit(true);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return conn;

	}
	
	/*
	public static Connection createMicrosoftSqlConnection() {
		DataSource ds = null;
		Context ctx = null;
		Connection conn = null;

		try {
			ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/MicrosoftSql"); // JNDI Name
			conn = ds.getConnection();
			conn.setAutoCommit(true);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return conn;

	}
	*/

}
