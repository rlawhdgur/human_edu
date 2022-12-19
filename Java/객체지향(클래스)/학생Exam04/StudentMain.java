public static void main(String[] args) {
		
		String[] course1 = {"경제", "물류", "수학", "컴퓨터", "영어"};
		Student st1 = new Student ("K01", "강현준", "산업공", course1);
		int[] score1 = {80,81,82,83,84};
		// 문제는 모든 과목의 점수가 확정되어야만 성적처리가 가능함.
		// 경제과목과 80점이란 연관관계를 찾기가 어려움.
		
		st1.setCourseScore (score1);
		st1.showInfo();
		System.out.println ("------------------------------------------------------------------------------------");
		
		String[] course2 = {"컴퓨터", "수학", "영어", "네트웍", "그래픽"};
		Student st2 = new Student ("K02", "김종혁", "컴퓨터공", course2);
		int[] score2 = {90,91,92,93,94};
		st2.setCourseScore(score2);
		st2.showInfo();
}