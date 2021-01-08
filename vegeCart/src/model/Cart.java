package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Cart implements Serializable {
	private List<Vege> list;
	private int total;
	public Cart() {
		super();
		list=new ArrayList<>();
		total=0;
	}

	public List<Vege> getList() {
		return list;
	}
	public void setList(List<Vege> list) {
		this.list = list;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}

}
