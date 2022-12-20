public class Bus extends Car {
	
	public Bus (int speed) {
		super(speed);	
	}
	
	@Override
	public void speedUp () {
		this.currentSpeed++;	
	}
	
	@Override
	public int getCharge () {
		System.out.println("버스요금 : 1450");
		return 1450;	
	}
}