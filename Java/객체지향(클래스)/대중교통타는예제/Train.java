public class Train {
	
	public String trainNum;
	public int passergerCnt;
	public int income;
	
	
	public Train (String trainNum, int passergerCnt, int income) {
		this.trainNum = trainNum;
		this.passergerCnt = passergerCnt;
		this.income = income;	
	}
	
	public void take (int money) {
		this.passergerCnt++;
		this.income = this.income + money;	
	}
}