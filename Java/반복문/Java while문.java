// while 반복문.

// 1~10까지 누적합산..
public static void main(String[] args) {
	// 1~10까지 누적합산..
		
	int index = 0;
	int total = 0;
		
	while (index <= 10) {
		index = index + 1;		// index +=1; 또는 index++; 와 같음.
		total = total + index;	// total += index; 와 같음
			
		System.out.printf ("%d번째 까지의 누적합은 %d임. \n", index, total);	
	}
	System.out.println ("------------------------------");
	System.out.printf("index = %d \t total =%d \n", index, total);
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
	// 1부터 10까지 출력을 하면서 5보다 작으면 5이하입니다.라는 것을 출력할 예정.
		
	int cnt = 0;
	boolean z = true;
	while (z) {
		cnt++;
		System.out.printf("cnt = %d \n", cnt);
			
		if (cnt > 10) {
			break;   //  z = false;
		}
//		if (cnt <= 5) {
//			System.out.println ("현재의 수치가 5이하입니다.");
//		}
		if (cnt > 5) {
			continue;         // 반복문의 시작점으로 되돌아가는 역활.
		}			
		System.out.println ("현재의 수치가 5이하입니다.");
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


// do ~ while문..
public static void main(String[] args) {
		// do~While 반복문 실습
		// do 구문을 조건과 관계없이 한번은 수행함.
		
		int index = 0;
		int total = 0;
		
		do {
			index = index + 1;  		// index++;
			total = total + index; 		// total += index;
			
			System.out.printf("%d번째까지의 누적합은 %d \n", index, total);
		} while (index<10);
		
		System.out.printf("index=%d \t total=%d \n", index, total);
}



// while break문..
public static void main(String[] args) {

	// 1~10까지 반복을 하는 프로그램. break문을 활용할 것.
	int index = 0;
	int total = 0;
	while (true) {		// 무한반복 조건
		index = index + 1;
		total = total + index;
		System.out.printf("%d번째까지 누적합 %d \n", index, total);
			
		if (index == 10) {	// break 조건으로 while 반복문 빠져나옴.
			break;
		    }
        }
		System.out.printf ("index = %d \t total = %d \n",index, total);
}



public static void main(String[] args) {
		// 홀수만 더하는 프로그램.
		// X % 2 == 1; 2로 나누었을 때 나머지가 1 수 ==> 홀수

	int index = 0;
	int total = 0;
	while (index < 10) {

		index = index + 1;
		if (index % 2 == 1) { // 홀수
			total = total + index;
			System.out.printf("%d번째까지의 홀수누적합산 %d입니다. \n", index, total);
		}
	}
	System.out.printf("total = %d \n", total);
}



public static void main(String[] args) {
		// 홀수만 더하는 프로그램.
		// X % 2 == 1; 2로 나누었을 때 나머지가 1 수 ==> 홀수

		int index = 0;
		int total = 0;
		while (index < 10) {
			index = index + 1;
			if (index % 2 == 1) { // 홀수
				total = total + index;
				System.out.printf("%d번째까지의 홀수누적합산 %d입니다. \n", index, total);
			}
		}

		System.out.printf("total = %d \n", total);
}