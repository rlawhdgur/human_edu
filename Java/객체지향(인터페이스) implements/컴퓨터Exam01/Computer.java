public class Computer implements Internet, Calc {
    // 인터페이스는 한개이상 상속가능.
    // 인터넷, 칼크 인터페이스 implements.
	
	public Computer() {
		
	}
	
	@Override
	public int sum(int a, int b) {
		int z;
		z = a + b;
		return z;	
	}

	@Override
	public void search() {
		System.out.println("인터넷을 검색합니다.");	
	} 
}