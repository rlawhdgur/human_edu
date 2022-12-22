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


public static void main(String[] args) {
	// 1~100까지의 정수 중 3의배수 총합을 구하는 코드 작성. 
	// 1,2, 3 ,4,5, 6 ,7,8, 9 ,10, ... , 100 ==> a%3==0 /반복문. a=0, a=a+3
	// 3 ==> 6 ==> 9 ==> 12 ==> ... ==> 90 ==> 93 ==> 96 ==> 99 까지
		
	// 3 ==> 3
	// 3+6 = 9
	// 3+6+9 = 18
	// 3+6+9+12 = 30
	// 3+6+9+12+ ... + 90+93+96+99 = ??  (우리가 얻고자 하는 답.) 

		
//  Case -1 나머지를 이용함.
    int total = 0;
    for (int a=0; a<=100; a++) {
    	if (a%3 == 0 ) {
    		total = total + a;
    		System.out.printf ("%d까지의 누적합 ==> %d \n", a, total);
    	}
    }
}    
		 
		
// Case -2 증감을 3씩 증감.
public static void main(String[] args) {
	int total = 0;
	for (int a=0; a<=100; a+=3) {      //a+=3
			total = total + a;
			System.out.printf ("%d까지의 누적합 ==> %d \n", a, total);
		}
}





 