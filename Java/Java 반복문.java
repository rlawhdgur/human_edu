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

// for문..
public static void main(String[] args) {
		// for문을 활용하여 1~10까지 누적합 구하기.
		int total = 0;
		int index;			// for문 밖에서 index를 사용하는 부분이 있기 때문에 변수 선언은 for문 밖에서 사용.
		for (index=1; index<=10; index=index+1) {
			// index=1   ==> 초기값을 설정.
			// index<=10 ==> 반복에 대한 조건.
			// index++   ==> for문 마감시 처리하는 실행문(증감).
			total = total + index;
			
			System.out.printf("%d번째까지의 누적합 %d입니다. \n", index, total);
		}
		System.out.printf("index = %d \t total=%d \n", index, total);
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

