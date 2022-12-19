public static void main(String[] args) {
		
		Account account = new Account ();
		
		account.setBalance(10000);
		System.out.printf("현재잔고 ==> %d \n", account.getBalance());
		System.out.println ("------------------------------------------------------------------------------------");
		
		account.setBalance(-100);
		System.out.printf("현재잔고 ==> %d \n", account.getBalance());
		System.out.println ("------------------------------------------------------------------------------------");
		
		account.setBalance(2000000);
		System.out.printf("현재잔고 ==> %d \n", account.getBalance());
		System.out.println ("------------------------------------------------------------------------------------");
		
		account.setBalance(300000);
		System.out.printf("현재잔고 ==> %d \n", account.getBalance());
}