package model;

public class InchCmLogic {
	public void  execute(InchCmNum num){
		num.setCm(num.getInch()*2.54);
	}
}
