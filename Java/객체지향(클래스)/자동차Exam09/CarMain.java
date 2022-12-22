public static void main(String[] args) {
		
		Car car1 = new Car ("2022-101K", "그랜져");
		
		System.out.println(car1.company);
		System.out.println(car1.carId);
		System.out.println(car1.model);
		System.out.println ("--------------------------------------------------");
		
//		car1.company = "현대차";
//		car1.carId = "2022-1011H";
		// final은 한번 지정되면 변경 불가한 특성 있음.
		car1.model = "소나타";
		System.out.println(car1.model);
		System.out.println ("--------------------------------------------------");
		
		
		Car car2 = new Car ("2022-1012K", "K7");
		// car2도 생성자를 통해서 carId 확정되는 순간 변경불가 함.
		System.out.println(car2.company);
		System.out.println(car2.carId);
		System.out.println(car2.model);
		System.out.println ("--------------------------------------------------");
		
//		car2.carId = "2022-1012HO";
		car2.model = "K5";
		System.out.println(car2.model);
}