package model;

import java.io.Serializable;

public class Self implements Serializable {
	private String name;
	private String race;
	private String profession;
	private int hp, mp, dex,agi,power;
	private int total;
	public Self(String name) {
		this.name=name;
	}
	public Self(String name, String race, String profession,int hp, int mp, int dex, int agi, int power) {
		this(name,race,hp,mp,dex,agi,power);
		this.profession=profession;
	}
	public Self(String name, String race, int hp, int mp, int dex, int agi, int power) {
		this(name);
		this.hp=hp;
		this.mp=mp;
		this.dex=dex;
		this.agi=agi;
		this.power=power;
		this.race=race;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRace() {
		return race;
	}
	public void setRace(String race) {
		this.race = race;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public int getHp() {
		return hp;
	}
	public void setHp(int hp) {
		this.hp = hp;
	}
	public int getMp() {
		return mp;
	}
	public void setMp(int mp) {
		this.mp = mp;
	}
	public int getDex() {
		return dex;
	}
	public void setDex(int dex) {
		this.dex = dex;
	}
	public int getAgi() {
		return agi;
	}
	public void setAgi(int agi) {
		this.agi = agi;
	}
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
}