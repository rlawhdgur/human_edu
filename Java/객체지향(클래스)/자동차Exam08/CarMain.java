public static void main(String[] args) {
		
		Car car1 = new Car ();
		Car car2 = new Car ();
		
		car1.speedUp();
		
//		car1.speedUp();
		
		Car.driving();
		
//		Car.driving();
		
		car1.driving();
		// static 메서드인 driving은 객체기반으로도 접근가능. 하지만 권장하지 않는다.
		
		int sp;
		
		sp = Car.maxSpeed;
		sp = car1.maxSpeed;
		// static 변수인 maxSpeed는 클래스를 통해서 접근하는 것을 권장하나,
		// 객체를 통해서 접근하는 것도 가능하다.
//		System.out.printf ("Car.maxSpeed : %d \n", Car.maxSpeed);
//		System.out.printf ("Car1.maxSpeed : %d \n", car1.maxSpeed);
}