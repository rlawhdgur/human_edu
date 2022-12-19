public static void main(String[] args) {
		
		Bus bus1 = new Bus (100);
		
		bus1.speedUp();
		System.out.printf("BUS의 현재속도 : %d \n", bus1.currentSpeed);
		
		int busMoney = bus1.getCharge();
		System.out.printf("Return BUS Money : %d \n", busMoney);
		System.out.println ("------------------------------------------------------------------------------------");
		
		
		Taxi taxi1 = new Taxi (120);
		
		taxi1.speedUp();
		System.out.printf("TAXI의 현재속도 : %d \n", taxi1.currentSpeed);
		
		int taxiMoney = taxi1.getCharge();
		System.out.printf("Return TAXI MONEY : %d \n", taxiMoney);
}
