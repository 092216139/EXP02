package student;

import java.util.ArrayList;

public class stu {
	public String num;
	public String name;
	public String sex;
	public String cla;
	public double sore;
	

	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCla() {
		return cla;
	}
	public void setCla(String cla) {
		this.cla = cla;
	}
	public double getSore() {
		return sore;
	}
	public void setSore(double sore) {
		this.sore = sore;
	}
	public stu(String num,String name,String sex,String cla,double sore){
		this.num=num;
		this.name=name;
		this.sex=sex;
		this.cla=cla;
		this.sore=sore;
	}
	public static void main(String []arg){
		
	}

}
