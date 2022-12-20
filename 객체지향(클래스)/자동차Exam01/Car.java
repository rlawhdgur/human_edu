public class Car {
	// 객체를 표현하기 위한 필드.
	// 멤버변수. (필드)
	public String company;				// 제조사.
	public String model; 				// 차의 모델.
	public int maxSpeed;				// 차의 최고속도.
	public int currentSpeed; 			// 차의 현재속도.
	
    
	public Car() {						// 생성자.
		
	}
	
	
	// 메소드.
	public void speedUp () {
		currentSpeed = currentSpeed + 5;
	}
	public void speedDown () {
		currentSpeed = 0;
}