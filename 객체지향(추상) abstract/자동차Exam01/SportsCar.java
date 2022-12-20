public class SportsCar extends Car {
	
	public SportsCar (int speed) {
		super(speed);	
	}
	
	public void showInfo() {
		System.out.printf("SpotsCar의 현재속도 : %d \n", this.currentSpeed);	
	}
}