public static void main(String[] args) {
		
		Bus b1 = new Bus ();
		Taxi t1 = new Taxi ();
		
		Driver d1 = new Driver ();
		Driver d2 = new Driver ();
		
		d1.drive(b1); 	// 버스를 타는 상황임.
		d2.drive(t1);	// 택시를 타는 상황임.
		
		// Vehicle v = b1;
		// b1 = new Bus()에 의해 생성된 객체이므로 아래와 같음.
		// Vehicle v = new Bus();
}