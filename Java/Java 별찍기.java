public static void main(String[] args) {
/*		
 		*					a=1; b=1
		**					a=2; b=1,2
		***					a=3; b=1,2,3
		****				a=4; b=1,2,3,4	
		*****				a=5; b=1,2,3,4,5
*/
	// 2중 for문을 사용할 것이고
	// System.out.print ("*")
	// System.out.printlnf ()
		
	int a, b;
	for (a=1; a<=5; a++) {
		for (b=1; b<=a; b++) {
			System.out.print ("*");
		}
		System.out.println();
	}
}


public static void main(String[] args) {
/*
 			*****				a=1; b=1,2,3,4,5			a+b --> 6
 			****				a=2; b=1,2,3,4				a+b --> 6
 			***					a=3; b=1,2,3				a+b --> 6	
 			**					a=4; b=1,2					a+b --> 6
 			* 					a=5; b=1					a+b --> 6
 */
		
		
	int a, b;
	for (a=1; a<=5; a++) {
		for (b=1; b<=6-a; b++) {
			System.out.print ("*");
		}
		System.out.println();
	}
}


public static void main(String[] args) {
/*
    	    *               a=1; b=1,2,3,4	--> c=5					: a+b=5, a+c=6
    	   **				a=2; b=1,2,3	--> c=4,5 				: a+b=5, a+c=6
    	  ***				a=3; b=1,2		--> c=3,4,5				: a+b=5, a+c=6	
    	 ****				a=4; b=1		--> c=2,3,4,5			: a+b=5, a+c=6	
    	***** 				a=5; b=없음		--> c=1,2,3,4,5			: a+b=5, a+c=6
 */
    int a, b, c;
	for (a=1; a<=5; a++) {
		for (b=1; b<=5-a; b++) {
			System.out.print (" ");
		}
		for (c=6-a; c<=5; c++) {
			System.out.print ("*");
		}
		System.out.println();
	}
}


public static void main(String[] args) {
/*
       *****			a=1; b=없음      --> c=1,2,3,4,5		: a=시작점c=같다
        ****			a=2; b=1		--> c=2,3,4,5			: a=시작점c=같다
         ***			a=3; b=1,2		--> c=3,4,5				: a=시작점c=같다		
          **			a=4; b=1,2,3	--> c=4,5				: a=시작점c=같다	
           * 			a=5; b=1,2,3,4	--> c=5					: a=시작점c=같다
 */
		
		
	int a, b, c;
	for (a=1; a<=5; a++) {
		for (b=1; b<=a-1; b++) {
			System.out.print (" ");
		}
		for (c=a; c<=5; c++) {
			System.out.print ("*");
		}
		System.out.println();
	}
}