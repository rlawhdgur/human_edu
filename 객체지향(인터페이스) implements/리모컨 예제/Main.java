public static void main(String[] args) {
		
//		RemoteControl rc = new Television ();
		Television tv = new Television ();
		RemoteControl rc1 = tv;
		// rc는 구현객체이고, Television는 구현클래스의 객체.
		
		rc1.turnOn();
		rc1.setVolume(5);
		rc1.setMute(true);		// 무음 해제.
		rc1.setVolume(RemoteControl.MIN_VOL);
		// RemoteControl.MIN_VOL ==> 0;
		// 그래서 ec.setVolume(0)와 같은 동작을 함.
		rc1.turnOff();
		RemoteControl.changeBatt();
		System.out.println("------------------------------------------------------------");
		
		// 아래는 RemoteControl에 Audio 연결시.
		Audio au = new Audio ();
		RemoteControl rc2 = au;
		rc2.turnOn();
		rc2.setVolume(5);
		rc2.setMute(false);		// 무음 해제.
		rc2.setVolume(RemoteControl.MIN_VOL);
		// RemoteControl.MIN_VOL ==> 0;
		// 그래서 ec.setVolume(0)와 같은 동작을 함.
		rc2.turnOff();
		RemoteControl.changeBatt();
	}