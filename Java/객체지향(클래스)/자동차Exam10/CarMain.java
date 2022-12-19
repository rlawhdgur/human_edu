public static void main(String[] args) {
		 
		Car car1 = new Car (220, 250);
		
		System.out.printf("현재속도 : %d / 최고속도 : %d \n", car1.getCurrentSpeed(), car1.getMaxSpeed());
		// getter를 통해서 데이터를 가져온다.
		System.out.println ("------------------------------------------------------------------------------------");
		
		
//		car1.maxSpeed = 250;
		car1.setMaxSpeed(250);
		
		System.out.printf("현재속도 : %d / 최고속도 : %d \n", car1.getCurrentSpeed(), car1.getMaxSpeed());
		System.out.println ("------------------------------------------------------------------------------------");
		
		car1.speedUp(10);
		
		System.out.printf("현재속도 : %d / 최고속도 : %d \n", car1.getCurrentSpeed(), car1.getMaxSpeed());
		System.out.println ("------------------------------------------------------------------------------------");
		
		car1.speedUp(50);
		
		System.out.printf("현재속도 : %d / 최고속도 : %d \n", car1.getCurrentSpeed(), car1.getMaxSpeed());
		System.out.println ("------------------------------------------------------------------------------------");
}