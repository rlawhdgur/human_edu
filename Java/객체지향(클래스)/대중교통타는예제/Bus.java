public class Bus {
	
	public String busNum;
	public int passergerCnt;
	public int income;
	
	
	public Bus (String busNum, int passergerCnt, int income) {
		this.busNum = busNum;
		this.passergerCnt = passergerCnt;
		this.income = income;
	}
	
	public void take (int money) {
		this.passergerCnt++;
		this.income = this.income + money;	
	}
}