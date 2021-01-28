package model;

import java.io.Serializable;

public class Profile implements Serializable {
	private int id;
	private String name;
	private String furigana;
	private String emailAdd;
	private String selfPR;
	private String imgname;

	public Profile() {}
	public Profile(String name,String furigana,String emailAdd,String selfPR,String imgname) {
		this.name=name;
		this.furigana=furigana;
		this.emailAdd=emailAdd;
		this.selfPR=selfPR;
		this.imgname=imgname;
	}
	public Profile(int id,String name,String furigana,String emailAdd,String selfPR,String imgname) {
		this(name,furigana,emailAdd,selfPR,imgname);
		this.id=id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFurigana() {
		return furigana;
	}
	public void setFurigana(String furigana) {
		this.furigana = furigana;
	}
	public String getEmailAdd() {
		return emailAdd;
	}
	public void setEmailAdd(String emailAdd) {
		this.emailAdd = emailAdd;
	}
	public String getSelfPR() {
		return selfPR;
	}
	public void setSelfPR(String selfPR) {
		this.selfPR = selfPR;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
}
