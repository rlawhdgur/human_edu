import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Scanner;

public class Menu {
	private ArrayList<String> alName;		// 메뉴명 목록
	private ArrayList<Integer> alPrice;		// 메뉴가격 목록
	
	Menu() {
		// alName, alPrice 초기화 (Initialization)
		this.alName = new ArrayList<String>();
		this.alPrice = new ArrayList<Integer>();
		// d:\temp\menu.txt를 찾고 열어서 메뉴명 / 가격을 읽어들인다.
		File file = new File("d:\\temp\\menu.txt");
		try (Scanner sc = new Scanner(file, StandardCharsets.UTF_8)) {
			while (sc.hasNextLine()) {
				String line = sc.nextLine();
				String[] token = line.split(",");	// ["Americano","2500"]
				this.alName.add(token[0]);
				this.alPrice.add(Integer.parseInt(token[1]));
//				System.out.println(line);
			}
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	private void save() {
		// alName, alPrice의 메뉴명, 가격을 menu.txt에 쓰기.(저장)
		try {
            File file = new File("d:\\temp\\menu.txt");
            if (!file.exists()) {
                file.createNewFile();
            }
            FileWriter fw = new FileWriter(file);
            PrintWriter writer = new PrintWriter(fw);
            for (int i=0; i<this.alName.size(); i++) {
            	writer.write(this.alName.get(i)+","+this.alPrice.get(i)+"\n");
            }
            writer.close();
 
        }
		catch (IOException e) {
            e.printStackTrace();
        }
	}
	private void add (String name, int price) {
		// alName, alPrice에 name, price를 추가
		this.alName.add(name);
		this.alPrice.add(price);
	}
	private void delete(int index) {
		// alName, alPrice 양쪽에서 index번호를 가진 것을 제거.
		
		this.alName.remove(index);
		this.alPrice.remove(index);
	}
	private void update(int index, String name, int price) {
		// alName, alPrice 양쪽에서 index번호의 이름과 가격을 수정.
		
		this.alName.set(index, name);
		this.alPrice.set(index, price);
	}
	void display () {
		// 메뉴명과 가격을 표시.
//		Americano, 2500
//		Mocca, 3200
//		Espresso, 2700
//		Cappuccino, 3500
//		Latte, 3000
		
		for (int i=0; i<this.alName.size(); i++) {
			System.out.println("* "+(i+1)+"."+this.alName.get(i)+", "+this.alPrice.get(i));
		}
		
	}
	String getName (int ndx) {
		return this.alName.get(ndx);
	}
	int getPrice (int ndx) {
		return this.alPrice.get(ndx);
	}
	
	
	
	void control() {
		Scanner s1 = new Scanner(System.in);	// 문자열 입력전용
		Scanner s2 = new Scanner(System.in);	// 숫자 입력전용
		
		
		boolean run = true;
		
		while(true) {
			System.out.print("메뉴작업을 선택하시오.[c:추가, r:목록표시, u:수정, d:삭제, '': 종료] ==> ");
			String instr = s1.nextLine();
			
			
			if(instr.equals("")) {
				// while exit, program terminated.
				this.save();
				break;
			}
			else if(instr.equals("c")) {
				// 메뉴명 입력받고
				// 가격 입력받고
				// menu.add()
				
				System.out.print("메뉴를 추가해주세요. : ");
				String name = s1.nextLine();
				System.out.print("가격을 책정해주세요. : ");
				int price = s2.nextInt();
				System.out.println(name+", "+price+"원이 추가되었습니다.");
				this.add(name, price);
			}
			else if (instr.equals("r")) {
				this.display();
			}
			else if (instr.equals("u")) {
				// 수정할 메뉴의 인덱스 번호 입력받고
				// 새 이름입력받고
				// 새 가격 입력받고
				// menu.update()
				
				System.out.print("수정할 메뉴번호를 입력하세요. : ");
				int ndx = s2.nextInt();
				System.out.print("변경될 메뉴이름을 입력하세요. : ");
				String name = s1.nextLine();
				System.out.print("변경될 메뉴가격를 입력하세요. : ");
				int price = s2.nextInt();
				System.out.println("*수정되었습니다.*");
				this.update(ndx, name, price);
			}
			else if (instr.equals("d")) {
				// 삭제할 메뉴의 인덱스번호 입력받고
				// menu.delete()
				
				System.out.print("삭제할 메뉴번호를 입력하세요. : ");
				int ndx = s2.nextInt();
				System.out.println("삭제되었습니다.");
				this.delete(ndx-1);

			}
	  
		}

	}
}
