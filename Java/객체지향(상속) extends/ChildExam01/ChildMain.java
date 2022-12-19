public static void main(String[] args) {
		
		Parent p1 = new Parent ();
		Parent p2 = new Parent (10);
		System.out.println ("------------------------------------------------------------------------------------");
		
		Child c1 = new Child ();
		System.out.println ("------------------------------------------------------------------------------------");
		
		Child c2 = new Child (10);
		// c2객체는 super생성자를 통해서 부모의 기능을 수행할 수 있음.
}