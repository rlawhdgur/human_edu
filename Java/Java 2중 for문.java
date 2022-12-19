public static void main(String[] args) {
	// x,y는 1~10 사이의 정수
	// 4x + 5y == 60인 x,y의 값을 출력.

	int x, y;
	for (x = 1; x <= 10; x++) {
		for (y = 1; y <= 10; y++) {
			if (4 * x + 5 * y == 60) {
				System.out.printf("(%d, %d) \n", x, y);
			}
		}
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