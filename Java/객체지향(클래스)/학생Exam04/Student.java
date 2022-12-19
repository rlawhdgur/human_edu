public class Student {
	
	String studentId;			// 학번
	String studentName;			// 학생 이름
	String studentMajor;		// 전공
	String[] courseName;		// 수강신청 과목명
	int[] coursScore;			// 수강신청 점수 ==> 처음에 0이었다가 점수 확정 후 업데이트.
	
	
	public Student (String studentId, String studentName, String studentMajor, String[] courseName) {
		this.studentId = studentId;
		this.studentName = studentName;
		this.studentMajor = studentMajor;
		this.courseName = courseName;
	}
	
	
	public void setCourseScore (int[] courseScore) {
		this.coursScore = courseScore;
	}
	
	public void showInfo () {
		int sum = 0;
		System.out.printf("%s학생의 점수 \n", this.studentName);
		for (int a=0; a<5; a++) {
			System.out.printf("%s : %d \n", this.courseName[a], this.coursScore[a]);
//			sum = sum + this.coursScore[a];
		}
//		System.out.printf("총점 : %d \n", sum);
//		System.out.printf("평균 : %f \n", sum / 5.);
	}
}