/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import config.Config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author ANURUDDHA
 */
public class JDBC {

    public static Connection getCon() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        Connection c = DriverManager.getConnection(Config.host + "/" + Config.db, Config.uname, Config.password);
        return c;
    }

    public static ResultSet getdata(String sql) throws Exception {
        Statement s = getCon().createStatement();
        ResultSet rs = s.executeQuery(sql);
        return rs;
    }

    public static void putdata(String sql) throws Exception {
        Statement s = getCon().createStatement();
        s.execute(sql);
    }
}
