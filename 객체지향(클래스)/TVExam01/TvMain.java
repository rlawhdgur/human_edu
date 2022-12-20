public static void main(String[] args) {
		
		MyTv t = new MyTv ();
		
		t.channel = 100;
		t.volume = 0;
		System.out.println ("CH : " + t.channel +", VOL : " + t.volume);
		System.out.println ("------------------------------------------------------------------------------------");
		
		t.channeDown();
		t.volumeDown();
		System.out.println ("CH : " + t.channel +", VOL : " + t.volume);
		System.out.println ("------------------------------------------------------------------------------------");
		
		t.volume = 100;
		t.channelUp();
		t.volumeUp();
		System.out.println ("CH : " + t.channel +", VOL : " + t.volume);
		System.out.println ("------------------------------------------------------------------------------------");
		
		t.channelUp();
		System.out.println ("CH : " + t.channel +", VOL : " + t.volume);	
}