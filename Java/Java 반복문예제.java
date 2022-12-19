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

public static void main(String[] args) {
		// 입력을 a = 5;
		// 5단을 출력하는 프로그램을 만들어보기. (while문)

		/*
		 * 5 X 1 = 5 5 X 2 = 10 ..... 5 X 9 = 45
		 */

		// int i = 5;
		// for (int 1~9)
		// System.out.println ()

		int a;

		System.out.print("몇단을 출력할까요?");
		Scanner sc = new Scanner(System.in); // 사용자 입력 시작
		// Scanner 객체 생성.
		a = sc.nextInt();
		sc.close(); // Scanner 객체 소멸.

		/*
		 * for (int b=1; b<=9; b++) System.out.printf("%d X %d = %d \n", a, b, a*b);
		 * 
		 * }
		 */
		int b = 1;
		while (b <= 9) {
			System.out.printf("%d X %d = %d \n", a, b, a * b);
			b++;
		}
	}  

public static void main(String[] args) {
		// a, b라는 것은 for 문안의 변수로 활용할 것이고
		// 이중 Loop (2중 for문)을 활용하여 출력문..
		/*
		 * 1 X 1 = 1 1 X 2 = 2 ... 1 X 9 = 9 ---------------------- 2 X 1 = 2 2 X 2 = 4
		 * ... 2 X 9 = 18 ----------------------- 3단 4단 ... 9단
		 */

		int a, b;
		for (a = 1; a <= 9; a++) {
			System.out.printf("%d단 입니다. \n", a);

			for (b = 1; b <= 9; b++) {
				System.out.printf("%d X %d = %d\n", a, b, a * b);
			}

			System.out.println("---------------------------------------------------------------");
		}
	}   

public static void main(String[] args) {
		int a, b;
		
		a=1;		
		while (a<=9) {
			System.out.printf("%d단 입니다. \n", a);			
			b=1;
			while (b<=9) { 
				System.out.printf("%d X %d = %d \n", a, b, a*b);
				b++;
			}
			a++;
			System.out.println("--------------------------------------------------");
		}
	}       

