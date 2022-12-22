package exam1;

public class A {
	
	int i;
	String str;
	
	// 생성자 오버로딩
	A() {
		i = 0;
		
	}
	A(int a) {
		i = a;
	}
	A(String a) {
		
	}
	
	
	public int getI() {
		return i;	// 중단&반환
	}
	public void setI(int i) {
		this.i = i;
		return; 	// 중단
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	// 메서드 오버로딩
	int plus(int a, int b) {
		return a+b;
	}
	float plus(float a, float b) {
		return a+b;
	}
	float plus(int a, float b) {
		return (float)a+b;
	}
	String plus(String a, String b) {
		return a+b;
	}
	

}
