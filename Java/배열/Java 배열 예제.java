// 최대값 구하기.

public static void main(String[] args) {
//		<연습문제> 5장-7. 최대값 구하기.
		
//		int max = 0;
//		int [] array = {1,5,3,8,2};
//		
//		for (int i=0; i<4; i++) {
//			max = max + array[i];
//		}
		
		
		int [] arr = {1,5,3,8,2};
		int max = 0;						// MAX값을 구할 때는 작은 수를 설정해야 함.

//		System.out.println ("길이 : " + arr.length);
		
		for (int a=0; a<arr.length; a++) {					// arr.length ==> 5 
			if (max < arr[a]) {
				max = arr[a];
			}
		}
		System.out.printf("MAX = %d \n", max);	
}


// 최소값 구하기.

public static void main(String[] args) {
		// 5장 - 7. 최소값 구하기.
		
		int [] arr = {1,5,3,8,2};
		int min = 9999;						// 최소값을 구할 때는 큰 수를 설정해야 함.
		
//		System.out.println ("길이 : " + arr.length);	
		
		for (int a=0; a<arr.length; a++) {				// arr.length ==> 5
			if (min > arr[a]) {
				min = arr[a];
			}
		}
		System.out.printf("MIN = %d \n", min);
}


public static void main(String[] args) {
		// 최대값, 최소값, 합계를 구하는 프로그램. (함수를 이용해서)
		
		int max, min, sum;
		
		int [] arr1 = {1,5,3,8,2};		
		max = searchMax(arr1);
		min = searchMin(arr1);
		sum = dosum(arr1);
		System.out.printf("MAX = %d \n", max);
		System.out.printf("Min = %d \n", min);
		System.out.printf("SUM = %d \n", sum);
		System.out.println("---------------------------------------------------------------");
		

		int [] arr2 = {10,20,5,30,1,-99,100};
		max = searchMax(arr2);
		max = searchMax(arr2);
		sum = dosum(arr2);
		System.out.printf("MAX = %d \n", max);
		System.out.printf("Min = %d \n", min);
		System.out.printf("SUM = %d \n", sum);				
}

private static int searchMax(int[] arr) {	// int [] arr = arr1		
		// 첫번째로는 arr={1,5,3,8,2};
		// 두번째로는 arr={10,20,5,30,1,-99,100};
		
		int max = -9999;						// MAX값을 구할 때는 작은 수를 설정해야 함.		
		for (int a=0; a<arr.length; a++) {
			if (max < arr[a]) {
				max = arr[a];
			}
		}
		return max;
}
	
private static int searchMin(int[] arr) {
		int min = 9999;		
		for (int a=0; a<arr.length; a++) {
			if (min > arr[a]) {
				min = arr[a];
			}
		}
		return min;
}
	
private static int dosum(int[] arr) {				// arr={1,5,3,8,2};
		int sum = 0;
//		for (int a=0; a<arr.length; a++) {
//			sum = sum + arr[a];
//		}
		for (int arrValue : arr) {						
			sum = sum + arrValue;
		}
		return sum;
}


public static void main(String[] args) {
		// <연습문제> 5장 - 9번
		// 전역변수
		
		boolean run = true;
		int studentNum = 0;
		int [] score = null;
		Scanner scanner = new Scanner(System.in);
		
		while (run) {
			System.out.println("------------------------------------------------------------");
			System.out.println("1.학생수 / 2.점수입력 / 3.점수리스트 / 4.분석 / 5.종료");
			System.out.println("------------------------------------------------------------");
			System.out.print("선택 ==> ");
			
			int selectNo = scanner.nextInt();
			
			if (selectNo == 1) {
				System.out.print("학생수 ==> ");
				studentNum = scanner.nextInt();
				score = new int [studentNum];
			}
			else if (selectNo == 2) {
				for (int x=0; x<studentNum; x++) {
					System.out.printf("score[%d] = \n", x);
					score[x] = scanner.nextInt();
				}	
			}
			else if (selectNo == 3) {
				for (int x=0; x<studentNum; x++) {
					System.out.printf("score [%d] = %d \n", x, score[x]);
				}
			}
			else if (selectNo == 4) {
				int max = 0;
				int min = 100;
				int sum = 0;
				double avg = 0.0;
				for (int x=0; x<studentNum; x++) {
					if(max < score[x]) {
						max = score[x];
					}
					if (min < score[x]) {
						min = score[x];
					}
					sum = sum + score[x];
				}
				System.out.printf("MAX = %d \n", max);
				System.out.printf("Min = %d \n", min);
				System.out.printf("SUM = %d \n", sum);
				System.out.printf("AVG = %f \n", (double)sum/studentNum);
			}
			else if (selectNo == 5) {
				run = false;
			}
		}
		System.out.println("프로그램을 종료합니다.");
		scanner.close();
}


// 2차배열예제.
public static void main(String[] args) {
		// 5장 - 8. 합과 평균값 구하기.
		
		int [][] array = {{95,86}, {83,92,96}, {78,83,93,87,88}};
		int sum = 0;
		int count = 0;
		double avg = 0.0;
		
		System.out.println ("array.lenght : " + array.length);
		System.out.println ("array[0].lenght : " + array[0].length);
		System.out.println ("array[1].lenght : " + array[1].length);
		System.out.println ("array[2].lenght : " + array[2].length);
		
		System.out.println ("array[0][0] : " + array[0][0]);
		System.out.println ("array[2][4] : " + array[2][4]);
		System.out.println ("array[1][2] : " + array[1][2]);
//		System.out.println ("array[1][4] : " + array[1][4]);
		
		
//		for(int a=0; a<array.length; a++) {
//			for (int b=0; b<array[a].length; b++) {
//					sum = sum + array[a][b];
//				
//			}
//		}
		for (int a=0; a<array.length; a++) {
			for (int b=0; b<array[a].length; b++) {
				sum = sum + array[a][b];
				count++;
			}
			// count = count + array[a].length;
		}
		System.out.printf("count = %d \n", count);
		System.out.printf("sum = %d \n", sum);
		
		avg = (double)sum / count;
		System.out.printf("avg = %4.1f \n", avg);	
}

