public static void main(String[] args) {
		
		Student st1 = new Student ("강현준", 5000);
		Student st2 = new Student ("김종혁", 10000);
		
		Bus b1 = new Bus ("100번",0, 0);
		Bus b2 = new Bus ("200번", 0, 0);
		
		Train t1 = new Train ("1호선", 0, 0);
		Train t2 = new Train ("2호선", 0, 0);
		
		System.out.printf("%s가 가지고 있는 돈 ==> %d \n", st1.name, st1.money);
		System.out.printf("%s 버스는 승객이 %d명이고 수입은 %d 입니다. \n", b1.busNum, b1.passergerCnt, b1.income);
		System.out.println ("--------------------------------------------------");
		
		st1.takeBus(b1);
		// 첫번째 학생이 첫번째 버스를 탄다.
		// 첫번째 학생 ==> 나의 돈이 1000원 빠져나감.
		// 나의 돈이 1000보다 적으면 못탐.
		// 첫번째 학생이 첫번째 버스를 타면 버스는 ==> 승객이 +1, 수입이 +1000원 늘어남.
		System.out.printf("%s가 가지고 있는 돈 ==> %d \n", st1.name, st1.money);
		System.out.printf("%s 버스는 승객이 %d명이고 수입은 %d 입니다. \n", b1.busNum, b1.passergerCnt, b1.income);
		System.out.println ("--------------------------------------------------");
		
		st2.takeTrain(t2);
		// 두번째 학생이 두번째 지하철을 탄다.
		// 두번째 학생 ==> 나의 돈이 1200원 빠져나감.
		// 나의 돈 ==> 1200원보다 적으면 못탐.
		// 두번째 학생이 두번째 지하철을 타면 지하철은 ==> 승객이 +1, 수입이 +1200원 늘어남.
		
		System.out.printf("%s가 가지고 있는 돈 ==> %d \n", st2.name, st2.money);
		System.out.printf("%s 지하철은 승객이 %d명이고 수입은 %d 입니다. \n", t2.trainNum, t2.passergerCnt, t2.income);
		System.out.println ("--------------------------------------------------");
		
		System.out.printf("%s가 가지고 있는 돈 ==> %d \n", st1.name, st1.money);
		System.out.printf("%s가 가지고 있는 돈 ==> %d \n", st2.name, st2.money);
		System.out.println ("--------------------------------------------------");
		
		System.out.printf("%s 버스의 승객은 %d명이고, 수입은 %d 입니다. \n", b1.busNum, b1.passergerCnt, b1.income);
		System.out.printf("%s 버스의 승객은 %d명이고, 수입은 %d 입니다. \n", b2.busNum, b2.passergerCnt, b2.income);
		System.out.println ("--------------------------------------------------");
		
		System.out.printf("%s 지하철의 승객은 %d명이고, 수입은 %d 입니다. \n", t1.trainNum, t1.passergerCnt, t1.income);
		System.out.printf("%s 지하철의 승객은 %d명이고, 수입은 %d 입니다. \n", t2.trainNum, t2.passergerCnt, t2.income);
		System.out.println ("--------------------------------------------------");
		
		
		Student st3 = new Student ("Edward", 20000);
		
		Taxi tx1 = new Taxi ("잘나간다운수", 0);
		
		System.out.printf("%s가 가지고 있는 돈 ==> %d \n", st3.name, st3.money);
		System.out.printf("%s 택시의 수입은 %d 입니다. \n", tx1.taxiName, tx1.income);
		System.out.println ("--------------------------------------------------");
		
		st3.takeTaxi(tx1);
		// 세번째 학생이 택시를 탄다.
		// 세번째 학생 ==> 나의 돈이 10000원 빠져나감.
		// 나의 돈 ==> 10000원보다 적으면 못탐.
		// 세번째 학생이 첫번째 택시를 타면 택시는 ==> 수입이 +10000원 늘어남.
		
		System.out.printf("%s가 가지고 있는 돈 ==> %d \n", st3.name, st3.money);
		tx1.showInfo();
//		System.out.printf("%s 택시의 수입은 %d 입니다. \n", tx1.taxiName, tx1.income);
}