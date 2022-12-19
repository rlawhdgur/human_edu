// 문자열 실습.

// String은 문자열을 담는 클래스.
	public static void main(String[] args) {
        String human1 = "Human" + " " + "Computer";
        System.out.println (human1);        // Human Computer
    }

// 연산자 실습.
	public static void main(String[] args) {
        int a = 2*6;
        System.out.println (a);     // 12

        int a = 9/2;
        System.out.println (a);     // 4

        double a = 9/2;     
        System.out.println (a);     // 4.0

        double a = 9/2.;    // "정수 / 정수 ==> 정수" 이므로 둘중 하나는 실수의 형태로 변환 필요.
        System.out.println (a);     // 4.5

        int a= 7%3;		    //몫(2), 나머지는(1); %는 나머지를 의미함.
        System.out.println(a);      // 1

        int a = 1;
        a += 3;		// a = a+3;
        System.out.println (a);     // 4
                
        int a = 1;
        a++;			// a = a + 1;
        System.out.println(a);      // 2
        ++a;            // a = 1 + a;
        System.out.println(a);      // 2

        int a = 99;
        int result = a++ * 10;
        System.out.println ("a = " + a);            // 100
        System.out.println ("result = " + result);  // 990

        int a = 99;
        int result = ++a * 10;
        System.out.println ("a = " + a);            // 100
        System.out.println ("result = " + result);  // 1000
    }

    public static void main(String[] args) {
        // 제 이름은 김종혁이고, 제 닉네임은 K입니다. 그리고 제 나이는 47세. 
        // 오늘의 온도는 24.6도입니다.
        String name = "김종혁";	    // 문자열  ==> %s
        char nickName = 'K';	    // 문자	==> %c
        int age = 27;			    // 정수 	==> %d 
        double temp = 24.6;		    // 실수	==> %f
        boolean isStudent = true;   // %b
        System.out.printf
        ("제 이름은 %s이고, 제 닉네임은 %c입니다. 그리고 제 나이는 %d세. 오늘의 온도는 %f도입니다. "
                        + "당신은 학생입니다 = %b"
                        , name, nickName, age, temp, isStudent);
        // 제 이름은 김종혁이고, 제 닉네임은 K입니다. 
        // 그리고 제 나이는 47세. 오늘의 온도는 24.600000도입니다. 당신은 학생입니다 = true 
    }               