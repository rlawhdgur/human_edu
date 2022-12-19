// if문 예제.

	public static void main(String[] args) {
        // 60점 이상이면 합격입니다. 출력. 
        // ==> 마지막으로는 프로그램 종료 메시지를 주는 프로그램.		
        
        int kor = 80;
        System.out.printf("점수 = %d \n", kor);
                
        if (kor >= 60) {	
            // 조건식은 관계연산식이고. 이 부분이 참이면 블럭안을 수행.
            System.out.println ("합격하셨습니다.");
        }
        if (kor < 60) {
            System.out.println ("불합격하셨습니다.");			
        }
        System.out.println("프로그램을 종료합니다.");
        // 점수 = 80 
        // 합격하셨습니다.
        // 프로그램을 종료합니다.
    }

    public static void main(String[] args) {
		// 예제) 점수가 90이상이면 A, 80이상이면 B, 그 외는 C학점
		// if~
		
		int score = 69;
		System.out.printf("score = %d \n", score);
		char grade = 'Z';
		
		if (score >= 90 && score <=100) {
			grade = 'A';
		}
		if (score >= 80 && score < 90) {
			grade = 'B';
		}
		if (score >= 70 && score <80) {
			grade = 'C';
		}
		if (score < 70) {
			grade = 'F';
		}

		System.out.printf("grade = %c \n", grade);
        // score = 69 
        // grade = F 

	}


// if..else 예제.

public static void main(String[] args) {

		int kor = 50;
		System.out.printf("점수 = %d \n", kor);
		
		if (kor >=60) {
			System.out.println ("합격하셨습니다.");
		}
		else {
			System.out.println ("불합격하셨습니다.");
		}
		System.out.println ("프로그램 종료합니다.");
        // 점수 = 50 
        // 불합격하셨습니다.  
        // 프로그램 종료합니다.
	}

    public static void main(String[] args) {
		int score = 55;
		char grade = 'Z';
		
		System.out.printf("score = %d \n", score);
		
		if (score >=90) {
			grade = 'A';
		}
		else if (score >=80) {
			grade = 'B';
		}
		else if (score >=70) {
			grade = 'C';
		}
		else if (score >=60) {
			grade = 'D';
		}
		else {
			grade = 'F';
		}
		System.out.printf ("당신의 grade는 %c 입니다.", grade);
        // score = 55 
        // 당신의 grade는 F 입니다.
	}
	public static void main(String[] args) {
        // 점수가 60이상이면 합격, 
        // 그 중에서도 90점 이상일 경우 장학생여부 판별하는 프로그램.
		// 60점이하이면 불합격 그중에서도 40점 이하일 경우는 5년내 시험 자격불가.

		int score = 72;
		System.out.printf("score = %d \n", score);
		if (score >= 60) {
			// 60보다 클 경우 실행문
			System.out.println("당신은 합격하셨습니다.");
			if (score >= 90) {
				// 90보다 클경우 장학생에 관련 로직
				System.out.println("당신은 장학생이 되셨습니다.");
			} else { // 60 <= score < 90
				System.out.println("아쉽게도 장학생은 아닙니다.");
			}
		} else {
			// 60보다 작을 경우 실행문
			System.out.println("당신은 불합격하셨습니다.");
			if (score < 40) {
				System.out.println("당신은 5년내 시험자격이 없습니다.");
			} else {
				System.out.println("당신은 다음회차 시험자격이 있습니다.");

			}
		}
		System.out.println("프로그램 종료합니다.");
	}

// switch case문 ..

public static void main(String[] args) {
		char grade = 'C';
		switch (grade) {
		case 'A' :
			System.out.println ("당신은 VIP 회원입니다.");
			break;
		case 'B' :
			System.out.println ("당신은 일반회원입니다.");
			break;
		default :
			System.out.println ("당신은 비회원입니다.");
			break;
		}
		System.out.println ("프로그램을 종료합니다.");
	}

