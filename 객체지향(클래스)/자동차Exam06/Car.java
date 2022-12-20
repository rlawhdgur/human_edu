public class Car {
	
	public String company;
	public String model;
	public int maxSpeed;
	public int currentSpeed;
	
	
	public Car (String company, String model, int maxSpeed, int currentSpeed) {
		this.company = company;
		this.model = model;
		this.maxSpeed = maxSpeed;
		this.currentSpeed = currentSpeed;
		
	}
	
	public void speedUp () {
		// 속도가 1씩 증가하는 기능.
//		this.currentSpeed++;
		// car1이 들어와 있는 상황에서는 this ==> car1을 의미함.
		// maxSpeed를 넘어가면 안되는 조건.
		if (this.currentSpeed < this.maxSpeed) {
			this.currentSpeed++;
		}
		else {
			System.out.println ("최고속도 이상 올리지 못합니다.");
			
		}
	}
	
	public void speedUp (int speed) {
//		this.currentSpeed = this.currentSpeed + speed;
		// maxSpeed를 넘어가면 안되는 조건.
		if (this.currentSpeed + speed < this.maxSpeed) {
			this.currentSpeed = this.currentSpeed + speed;
		}
		else {
			this.currentSpeed = this.maxSpeed;
		}	
	}
	
	public int speedDown () {
		// 속도가 1씩 감소하는 기능.
		this.currentSpeed--;
		return this.currentSpeed;	
	}
	
	public int speedDown (int speed) {
		this.currentSpeed -= speed;
		return this.currentSpeed;	
	}
}