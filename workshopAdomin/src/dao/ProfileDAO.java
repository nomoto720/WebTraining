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

import model.Profile;

public class ProfileDAO{
	private Connection db;
	private PreparedStatement ps;
	private ResultSet rs;
	//接続共通処理
	private void connect() throws NamingException, SQLException {
		Context context = new InitialContext();
		DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/jsp");
		this.db = ds.getConnection();
	}
	//切断共通処理
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
	//全て表示
	public List<Profile> findAll(){
		List<Profile> list=new ArrayList<>();
		try {
			this.connect();
			ps=db.prepareStatement("SELECT * FROM profiles");
			rs=ps.executeQuery();
			while(rs.next()){
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String furigana=rs.getString("furigana");
				String emailAdd=rs.getString("emailAdd");
				String selfPR=rs.getString("selfPR");
				String imgname=rs.getString("imgname");
				list.add(new Profile(id,name,furigana,emailAdd,selfPR,imgname));
			}
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}finally{
			this.disconnect();
		}
		return list;
	}
	//一件追加
	public void insertOne(Profile profile){
		try {
			this.connect();
			ps=db.prepareStatement("INSERT INTO profiles(name,furigana,emailAdd,selfPR,imgname) VALUES(?,?,?,?,?)");
			ps.setString(1, profile.getName());
			ps.setString(2, profile.getFurigana());
			ps.setString(3, profile.getEmailAdd());
			ps.setString(4, profile.getSelfPR());
			ps.setString(5, profile.getImgname());
			ps.executeUpdate();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}finally{
			this.disconnect();
		}
	}
}

