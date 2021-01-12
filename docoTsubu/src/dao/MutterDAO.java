package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import model.Mutter;

public class MutterDAO {
	//データベース接続に使用する情報
	private Connection db;
	private PreparedStatement ps;
	private ResultSet rs;
	private void connect() throws NamingException, SQLException {
		Context context = new InitialContext();
		DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/jsp");
		db = ds.getConnection();
	}
	//切断処理
	private void disconnect() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (db != null) {
				db.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public List<Mutter> findAll(){
		List<Mutter> list=new ArrayList<>();
		try {
			this.connect();
			ps=db.prepareStatement("SELECT * FROM mutter ORDER BY ID DESC");
			rs=ps.executeQuery();
			while(rs.next()) {
				int id=rs.getInt("ID");
				String userName=rs.getString("NAME");
				String text=rs.getString("TEXT");
				list.add(new Mutter(id,userName,text));
			}
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}finally {
			this.disconnect();
		}
		return list;
	}
	public boolean create(Mutter mutter) {
		try {
			this.connect();
			ps=db.prepareStatement("INSERT INTO mutter(NAME,TEXT) VALUES(?,?)");
			ps.setString(1, mutter.getUserName());
			ps.setString(2, mutter.getText());
			int result=ps.executeUpdate();
			if(result !=1) {
				return false;
			}
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
			return false;
		}finally {
			this.disconnect();
		}
		return true;
	}
}
