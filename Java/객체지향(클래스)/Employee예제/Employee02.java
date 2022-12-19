public class Employee02 {
	
	public String name;
	public int employeeld;
	public static int serialNum = 1000;
	// static은 클래스 차원의 변수.
	// 모든 객체가 공유하는 변수.
	// 클래스가 로딩될 때 세팅이 되는 변수.
	
	
	public Employee02 (String name) {
		this.name = name;
		this.employeeld++;
		this.employeeld = serialNum;
	}
	
	public void showInfo () {
		System.out.printf("%s사원의 사번은 %d 입니다. \n", this.name, this.employeeld);
	}
}