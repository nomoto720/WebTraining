package model;

public class NumLogic {
	public Nums numsLogic(String str) {
		String[] strs=str.split(",");
		int[] data=new int[strs.length];
		for(int i=0;i<strs.length;i++) {
		data[i]=Integer.parseInt(strs[i]);
		}
		int element=data.length;
		int max=data[0];
		for(int i = 1; i < data.length; i++) {
		    if(max<data[i]) {
		        max=data[i];
		    }
		}
		int min=data[0];
		for(int i=1;i<data.length;i++) {
			if(min>data[i]) {
				min=data[i];
			}
		}
		int total=0;
		for(int i=0;i<data.length;i++) {
			total=total+data[i];
		}
		Nums nums=new Nums(data,element,max,min,total);
		return nums;
	}
}
