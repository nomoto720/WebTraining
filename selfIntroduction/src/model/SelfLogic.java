package model;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;

public class SelfLogic {
	public void execute(Self self) {
		String name=self.getName();
		int seed=0;
		  for(int i=0;i<name.length();i++){
		    seed+=name.charAt(i);
		}
		Random rand=new Random(seed);
		self.setHp(rand.nextInt(100)+1);
		self.setMp(rand.nextInt(100)+1);
		self.setDex(rand.nextInt(50)+1);
		self.setAgi(rand.nextInt(50)+1);
		self.setPower(rand.nextInt(50)+1);
	}
	public void execute2(Self self) {
		String race=self.getRace();
		switch(race) {
		case "人間":
			self.setHp(self.getHp()+10);
			self.setMp(self.getMp()+10);
			self.setDex(self.getAgi()+10);
			self.setAgi(self.getDex()+10);
			self.setPower(self.getPower()+10);
			break;
		case "ハイエルフ":
			self.setMp(self.getMp()+20);
			self.setDex(self.getAgi()+20);
			self.setAgi(self.getDex()+10);
			break;
		case "トロル":
			self.setHp(self.getHp()+30);
			self.setPower(self.getPower()+20);
			break;
		case "ノーム":
			self.setHp(self.getHp()+10);
			self.setDex(self.getAgi()+20);
			self.setAgi(self.getDex()+25);
			break;
		}
	}
	public void execute3(Self self) {
		String profession=self.getProfession();
		switch(profession) {
		case "戦士":
			self.setHp(self.getHp()*16/10);
			self.setPower(self.getPower()*14/10);
			break;
		case "盗賊":
			self.setHp(self.getHp()*11/10);
			self.setPower(self.getPower()*12/10);
			self.setDex(self.getAgi()*13/10);
			self.setAgi(self.getDex()*13/10);
			break;
		case "僧侶":
			self.setHp(self.getHp()*13/10);
			self.setMp(self.getMp()*15/10);
			self.setPower(self.getPower()*11/10);
			break;
		case "魔術師":
			self.setMp(self.getMp()*19/10);
			self.setDex(self.getAgi()*11/10);
			break;
		}
		self.setTotal(self.getHp()+self.getMp()+self.getDex()+self.getAgi()+self.getPower());
	}
	public Map<String,Integer> order(Self self){
		String[] params= {"体力:","魔力:","すばやさ:","きようさ:","パワー:"};
		int[] status= {self.getHp(),self.getMp(),self.getAgi(),self.getDex(),self.getPower()};
		for(int i=0;i<status.length-1;i++){
		    for(int j=i+1;j<status.length;j++){
		      if(status[i]<status[j]){
		        int t1=status[i];
		        status[i]=status[j];
		        status[j]=t1;
		        String t2=params[i];
		        params[i]=params[j];
		        params[j]=t2;
		      }
		    }
		  }
		Map<String,Integer> map=new LinkedHashMap<>() ;
		for(int i=0;i<status.length;i++) {
			map.put(params[i], status[i]);
		}
		return map;
	}
}
