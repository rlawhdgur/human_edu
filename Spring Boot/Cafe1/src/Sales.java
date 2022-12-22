import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class Sales {
	
	private ArrayList<String> alMobile;
	private ArrayList<String> alMenu;
	private ArrayList<Integer> alQty;
	private ArrayList<Integer> alPrice;
	private ArrayList<String> alTime;
//	private Order o1;
	
	Sales() {
		// 초기화
		this.alMobile = new ArrayList<String>();
		this.alMenu = new ArrayList<String>();
		this.alQty = new ArrayList<Integer>();
		this.alPrice = new ArrayList<Integer>();
		this.alTime = new ArrayList<String>();
	}
	void add(Order o1) {
		// Sales 객체에 Order 객체의 내용을 복사.
		// alMobile = this.mobile
		// alMenu = this.alName
		// alQty = this.alQty
		// alTime = new Date();
		for (int i=0; i<o1.getSize(); i++) {
			this.alMobile.add(o1.getMobile());
			this.alMenu.add(o1.getName(i));
			this.alQty.add(o1.getQty(i));
			this.alPrice.add(o1.getPrice(i));
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date = new Date();
			String dateToStr = dateFormat.format(date);
			this.alTime.add(dateToStr);
			
		}	
	}
	void display() {
		int sum = 0;
		for (int i=0; i<this.alMenu.size(); i++) {
			System.out.println(this.alMobile.get(i)+", "+this.alMenu.get(i)+", x"+this.alQty.get(i)+", "+this.alPrice.get(i)+"원, "+this.alTime.get(i));
			sum += this.alPrice.get(i);
		}
		System.out.println("총매출합계 : "+sum+"원");
		
	}
	void save() {
		try {
			DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
			Date date = new Date();
			String dateToStr = dateFormat.format(date);
			
            File file = new File("d:\\temp\\"+dateToStr+".txt");
            if (!file.exists()) {
                file.createNewFile();
            }
            FileWriter fw = new FileWriter(file);
            PrintWriter writer = new PrintWriter(fw);
            for (int i=0; i<this.alMenu.size(); i++) {
            	writer.write(this.alMobile.get(i)+", "+this.alMenu.get(i)+", x"+this.alQty.get(i)+", "+this.alPrice.get(i)+", "+this.alTime.get(i)+"\n");
            }
            writer.close();
 
        }
		catch (IOException e) {
            e.printStackTrace();
        }
		
	}

}
