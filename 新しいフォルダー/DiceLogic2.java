package model;

import java.util.HashSet;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class DiceLogic2 {
	public int diceCompCount() {
		Random rand=new Random();
		Set<Integer> set=new HashSet<>();
		int count=0;
		while(set.size() < 6){
			count++;
			int dice=rand.nextInt(6)+1;
			set.add(dice);
		}
		return count;
	}
	public String createStar(int count){
		StringBuilder sb=new StringBuilder();
		for(int i=0;i<count;i++){
			sb.append("*");
		}
		return sb.toString();
	}
	public int calcAvg(Map<Integer,Integer> map){
		int totalCount=0;
		int sum=0;
		for(int compCount : map.keySet()){
			totalCount+=map.get(compCount);
			sum+=compCount * 300 * map.get(compCount);
		}
		return sum/totalCount;
	}
	public int calcMode(Map<Integer,Integer> map){
		int modeKey=0;
		int modeValue=0;
		for(int compCount:map.keySet()){
			if(modeValue<map.get(compCount)){
				modeValue=map.get(compCount);
				modeKey=compCount;
			}
		}
		return modeKey;
	}
}
