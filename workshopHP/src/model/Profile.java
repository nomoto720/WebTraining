package model;

public class Profile {
	private String name;
	private String furigana;
	private String emailAdd;
	private String selfPR;
	public Profile() {}
	public Profile(String name,String furigana,String emailAdd,String selfPR) {
		this.name=name;
		this.furigana=furigana;
		this.emailAdd=emailAdd;
		this.selfPR=selfPR;
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

}
