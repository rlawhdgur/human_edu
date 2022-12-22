package exam1;

public class A1 extends A{
	
	A1() {
		super(0); 	// 부모클래스의 생성자를 가장 먼저 호출해야 한다.
		i = i+1;
	}
	
	@Override
	public int getI() {		// Overriding (메서드 재정의)
		return i+1;
	}
	
//	@Override
//	public int getI() {		
//		return super.getI()+1;
//	}
}
