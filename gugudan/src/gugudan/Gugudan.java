package gugudan;

import java.util.Random;
import java.util.Scanner;

public class Gugudan {
	
	private int dan;
	private int multi;
	private int result;
	private String msg;
	
	int user;
	
	Random ran = new Random();

	public Gugudan() {
		this.dan = ran.nextInt(8) + 2;
		this.multi = ran.nextInt(8) + 2;
	}

	public int result(int dan, int multi) {
		result = dan * multi;
		return result;
	}
	
	public String game(int user, int result) {
		msg = String.format("틀렸습니다! 정답은 %d 입니다.", result);
		if(user == result) {
			msg = "정답!";
			return msg;
		}	
		return msg;
	}	
	
	public String getMsg() {
		
		return msg;
	}
	
	public int getDan() {
		
		return dan;
	}

	public void setDan(int dan) {
		this.dan = dan;
	}

	public int getMulti() {
	
		return multi;
	}

	public void setMulti(int multi) {
		this.multi = multi;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	
	public static void main(String[] args) {
		int user;
		Scanner sc = new Scanner(System.in);
		
		Gugudan gu = new Gugudan();
		
		int dan = gu.getDan();
		int multi = gu.getMulti();
		int result = gu.result(dan, multi);
		
		System.out.printf("%d X %d = ?\n", dan, multi);
		System.out.print("답 입력 : ");
		user = Integer.parseInt(sc.nextLine());
		
		String msg = gu.game(user, result);
		System.out.println(msg);
		sc.close();
	}
}
