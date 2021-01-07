package model;

import java.io.Serializable;

public class Person implements Serializable {
	String name;
	String furigana;
	String gender;
	String bt;
	public Person() {}
	public Person(String name,String furigana,String gender,String bt) {
		this.name=name;
		this.furigana=furigana;
		this.gender=gender;
		this.bt=bt;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBt() {
		return bt;
	}
	public void setBt(String bt) {
		this.bt = bt;
	}

}
