// 문자열 실습.

// String은 문자열을 담는 클래스.
String human1 = "Human" + " " + "Computer";
System.out.println (human1);        // Human Computer

// 연산자 실습.

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