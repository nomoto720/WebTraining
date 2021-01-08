package model;

import java.io.Serializable;

public class Vege implements Serializable {
	private String name;
	private int price;
	public Vege() {}
	public Vege(String name,int price) {
		this.name=name;
		this.price=price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

}
