public static void main(String[] args) {

		Car car1 = new Car ();
		System.out.println ("car1 ==> " + car1);
		System.out.println ("car1.company ==> " + car1.company);
		System.out.println ("car1.madel ==> " + car1.model);
		System.out.println ("car1.maxSpeed ==> " + car1.maxSpeed);
		System.out.println ("car1.currentSpeed ==> " + car1.currentSpeed);
		System.out.println ("--------------------------------------------------");
		
		Car car2 = new Car ();
		System.out.println ("car2 ==> " + car2);
		System.out.println ("car2.company ==> " + car2.company);
		System.out.println ("car2.madel ==> " + car2.model);
		System.out.println ("car2.maxSpeed ==> " + car2.maxSpeed);
		System.out.println ("car2.currentSpeed ==> " + car2.currentSpeed);
		System.out.println ("--------------------------------------------------");
		
		Car car3 = new Car ("현대자동차", "그랜져", 250, 80);
		System.out.println ("car3 ==> " + car3);
		System.out.println ("car3.company ==> " + car3.company);
		System.out.println ("car3.madel ==> " + car3.model);
		System.out.println ("car3.maxSpeed ==> " + car3.maxSpeed);
		System.out.println ("car3.currentSpeed ==> " + car3.currentSpeed);
		System.out.println ("--------------------------------------------------");
		
		Car car4 = new Car ("제네시스", "GV80", 280, 120);
		System.out.println ("car4 ==> " + car4);
		System.out.println ("car4.company ==> " + car4.company);
		System.out.println ("car4.madel ==> " + car4.model);
		System.out.println ("car4.maxSpeed ==> " + car4.maxSpeed);
		System.out.println ("car4.currentSpeed ==> " + car4.currentSpeed);
		System.out.println ("--------------------------------------------------");
}