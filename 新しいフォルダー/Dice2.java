package model;

import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;

public class Dice2 implements Serializable {
	int maxThrowCount;
	Map<Integer,Integer> map=new TreeMap<>();
	public int getMaxThrowCount() {
		return maxThrowCount;
	}
	public void setMaxThrowCount(int maxThrowCount) {
		this.maxThrowCount = maxThrowCount;
	}
	public Map<Integer, Integer> getMap() {
		return map;
	}
	public void setMap(Map<Integer, Integer> map) {
		this.map = map;
	}

}
