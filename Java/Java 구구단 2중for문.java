// 2중 for문..

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


// 홀수 단만 출력할 수 있도록 프로그램을 변경할 예정.
public static void main(String[] args) {
	// 홀수 단만 출력할 수 있도록 프로그램을 변경할 예정.

	int a, b;
	for (a = 1; a <= 9; a++) {
		if (a % 2 == 1) { // a를 2로 나누어 나머지가 1인 수.
			System.out.printf("%d단 입니다. \n", a);

			for (b = 1; b <= 9; b++) {
				// if ( b%2 == 1) { 홀수만 곱하여 출력할 수 있도록..
				System.out.printf("%d X %d = %d\n", a, b, a * b);

			}
			System.out.println("---------------------------------------------------------------");
		}

	}

}