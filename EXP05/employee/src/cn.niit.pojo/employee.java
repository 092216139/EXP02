package cn.niit.pojo;

public class employee {
	private int EMP_ID;
	private String EMP_NAME;
	private String JOB;
	private double SALARY;
	private int DEPT;
	public int getEMP_ID() {
		return EMP_ID;
	}
	public void setEMP_ID(int eMP_ID) {
		EMP_ID = eMP_ID;
	}
	public String getEMP_NAME() {
		return EMP_NAME;
	}
	public void setEMP_NAME(String eMP_NAME) {
		EMP_NAME = eMP_NAME;
	}
	public String getJOB() {
		return JOB;
	}
	public void setJOB(String jOB) {
		JOB = jOB;
	}
	public double getSALARY() {
		return SALARY;
	}
	public void setSALARY(double sALARY) {
		SALARY = sALARY;
	}
	public int getDEPT() {
		return DEPT;
	}
	public void setDEPT(int dEPT) {
		DEPT = dEPT;
	}
	public employee(int EMP_ID,String EMP_NAME, String JOB, double SALARY,
			int DEPT) {
		super();
		this.EMP_ID=EMP_ID;
		this.EMP_NAME = EMP_NAME;
		this.JOB = JOB;
		this.SALARY = SALARY;
		this.DEPT = DEPT;
	}
	public employee() {
		super();
	}
	@Override
	public String toString() {
		return "employee [EMP_ID=" + EMP_ID + ", EMP_NAME=" + EMP_NAME + ", JBO="
				+ JOB + ", SALARY=" + SALARY + ", DEPT=" + DEPT + "]";
	}
	
}
