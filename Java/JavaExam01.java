// 출력하는 법.
System.out.print("HELLO HUMAN");

System.out.println("HELLO");    // 출력을 한 후 한줄 띄우기.
System.out.println("HUMAN");

int kor = 100;
int eng = 90;
int math = 95;
System.out.print(kor + eng + math);     // 285

// 변수 선언.
int human;      // int(정수형) human이란 변수를 선언.
human = 100;    // human이란 변수에 100을 대입.
System.out.println(human);  // 100

int result = human + 10     // human(100) + 10을 result에 대입.
System.out.println(result); // 110

// char Type
char human1 = 'A';      //char 타입은 홑따옴표라는 것에 주의.
System.out.println (human1);    // A
char human2 = 66;               
System.out.println (human2);    // B
System.out.println ( (int) human1); // 66

// long Type
long human3 = 20;
System.out.println(human3);     // 20
long human4 = 10000000000L;	
// int형 범주의 수치가 넘어갈 경우 L을 붙여서 long형 변수임을 알려야 함.
System.out.println(human4);     // 10000000000


// double Type
double human5 = 3.14159;
System.out.println (human5);    // 3.14159

// float Type
float human6 = 3.14159f;        // float 형을 사용할 때는 끝에 F를 써야 함.
System.out.println (human6);	// 3.14159

// boolean Type
boolean human7 = 10<11;
System.out.println(human7);     // treu
