public class Bus extends Car {
	
	public Bus () {
		System.out.println("BUS 객체 생성");	
	}
	
	
	public int getCharge () {
		int charge = 1300;
		System.out.printf("버스요금 : %d \n", charge);
		return charge;	
	}
}