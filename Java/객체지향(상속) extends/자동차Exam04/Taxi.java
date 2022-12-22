public class Taxi extends Car {
	
	public Taxi () {
		System.out.println("택시 객체 생성");	
	}
	
	
	public int getCharge () {
		int charge = 8000;
		System.out.printf("택시요금 : %d \n", charge);
		return charge;
	}
}