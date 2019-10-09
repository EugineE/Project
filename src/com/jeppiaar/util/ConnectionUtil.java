package com.jeppiaar.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtil {
			public static Connection getconnection() throws ClassNotFoundException, SQLException{
				Class.forName("com.mysql.jdbc.Driver");
				Connection connection=DriverManager.getConnection("Jdbc:mysql://localhost:3306/transport","root","0000");
				//Connection connection=DriverManager.getConnection("Jdbc:mysql://node11686-env-6094672.mj.milesweb.cloud/transport","root","1GYknAIHJZ");

				return connection;
				
				
			}
}
