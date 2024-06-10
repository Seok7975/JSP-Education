package round22.base;

import java.io.Serializable;

/*
 * 장바구니 구현을 위해 해당 물품의 정보를 관리할
 * DTO 클래스를 생성한다. 
 * 
 */
public class JangBaguni implements Serializable {

	private static final long serialVersionUID = 1L;
	private String name; //물품명
	private int price; //물품가격
	private int cnt; //물품수량

	public JangBaguni() { }	
	public void setName(String name) {
		this.name = name;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getName() {
		return name;
	}
	public int getPrice() {
		return price;
	}
	public int getCnt() {
		return cnt;
	}
}