public class Employee01 {
	
	public String name;
	public int employeeld;
	public int serialNum = 1000;
	
	
	public Employee01 (String name) {
		this.name = name;
		this.serialNum++;
		this.employeeld = this.serialNum;	
	}
	
	public void showInfo () {
		System.out.printf("%s사원의 사번은 %d 입니다. \n", this.name, this.employeeld);
    }
}