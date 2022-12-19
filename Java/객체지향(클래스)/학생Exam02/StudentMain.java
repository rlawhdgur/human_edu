public static void main(String[] args) {
		
		Student st1 = new Student ("강현준", 1, 10, 80, 90, 70);
		
		int total = st1.getTotal();
		double averge = st1.getAverge();
		
		System.out.printf("이름 : %s \n", st1.name);
		System.out.printf("총점 : %d \n", total);
		System.out.printf("평균 : %f \n", averge);
		System.out.println ("--------------------------------------------------");
		
		Student st2 = new Student ("김종혁", 3, 7, 100,90,90);
		total = st2.getTotal();
		averge = st2.getAverge();
		
		System.out.printf("이름 : %s \n", st2.name);
		System.out.printf("총점 : %d \n", total);
		System.out.printf("평균 : %f \n", averge);
		System.out.println ("--------------------------------------------------");
		
		Student st3 = new Student ("김주혁", 2, 9, 20, 50, 30);
		total = st3.getTotal();
		averge = st3.getAverge();
		
		System.out.printf("이름 : %s \n", st3.name);
		System.out.printf("총점 : %d \n", total);
		System.out.printf("평균 : %4.1f \n", averge);
}