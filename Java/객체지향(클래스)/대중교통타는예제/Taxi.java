public class Taxi {
	
	public String taxiName;
	public int income;
	
	
	public Taxi (String taxiName, int income) {
		this.taxiName = taxiName;
		this.income = income;	
	}
	
	public void take (int money) {
		this.income = this.income + money;
	}
	
	public void showInfo () {
		System.out.printf("%s택시는 %d의 수입이 있습니다. \n", this.taxiName, this.income);
	}
}