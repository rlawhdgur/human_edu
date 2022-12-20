public static void main(String[] args) {
		// 입력을 a = 5; 
		// 5단을 출력하는 프로그램을 만들어보기.  (for문)
		
		/*
		 5 X 1 = 5
		 5 X 2 = 10
		 .....
		 5 X 9 = 45
		 */
		
		// int i = 5;
		// for (int 1~9)
		//System.out.println ()
		
		int a;
		
		System.out.print ("몇단을 출력할까요?");
		Scanner sc = new Scanner (System.in);     // 사용자 입력 시작
		// Scanner 객체 생성.
		a = sc.nextInt();
		sc.close();      // Scanner 객체 소멸.
		
		for (int b=1; b<=9; b++) {      //b=b+1; or b+=1;
			System.out.printf("%d X %d = %d \n", a, b, a*b);
		}
}