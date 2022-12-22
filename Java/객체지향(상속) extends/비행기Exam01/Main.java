public static void main(String[] args) {
		
		SupersonicAirplain sa = new SupersonicAirplain ();
		
		sa.takOff();
		sa.fly();
		sa.flyMode = SupersonicAirplain.SUPERSONIC;
		// SUPERSONIC 변수는 static이므로 객체가 아닌 클래스 기반으로 접근 가능.
		sa.fly();
		
		sa.flyMode = SupersonicAirplain.NORMAL;
		sa.fly();
		sa.land();

}