public class MyTv {
	
	boolean isPowerOn;
	int channel;
	int volume;
	
	final int MAX_VOLUME = 100;
	final int MIN_VOLUME = 0;
	final int MAX_CHANNEL = 100;
	final int MIN_CHANNEL = 1;
	
	
	public MyTv () {
		
	}
	
	public void turnOnOff () {
		// isPowerOn의 값이 true면 false로, false면 true로 바뀐다.
		
//		if (this.isPowerOn == true) {
//			this.isPowerOn = false;
//			
//		}
//		else {
//			this.isPowerOn = true;
//		}
		
		this.isPowerOn = ! this.isPowerOn;
		// boolean 형태는 true / false 2가지만 있기 때문에 NOT의 연산자를 처리할 수 있다.
	}
	
	
	void volumeUp () {
		// 볼륨1증가, 단 MAX_VOLNME 내에서만
		if (this.volume < MAX_VOLUME) {
			this.volume++;
		}
//		else {
//			this.volume = MAX_VOLUME;
//		}		
	}
	
	void volumeDown () {
		// 볼륨1감소, 단 MIN_VOLUME 내에서만
		if (this.volume > MIN_VOLUME) {
			this.volume--;	
		}
//		else {
//			this.volume = MIN_VOLUME;
//		}
	}
	
	void channelUp () {
		// 채널1증가, MIN_CHANNEL ~ MAX_CHANNEL 내에서만
		// MAX_CHANNEL에서 1증가할 경우에는 MIN_CHANNEL로 변경.
		// MAX_CHANNEL(100) / MIN_CHANNEL(1)
		if (this.channel == MAX_CHANNEL) {
			this.channel = MIN_CHANNEL;
        }
		else {
			this.channel++;
		}
	}
	
	void channeDown () {
		// 채널1감소, MIN_CHANNEL ~ MAX_CHANNLE 내에서만
		if (this.channel == MIN_CHANNEL) {
			this.channel = MAX_CHANNEL;
		}
		else {
			this.channel--;
		}
	}
}