package Classes;

public class Item {
	private int Itemcode;
	private String Itemname;
	private int Itemprice;
	private int Stock;

	public Item() {
		super();
	}

	public Item(int Itemcode, String Itemname, int Itemprice, int Stock) {
		super();
		this.Itemcode = Itemcode;
		this.Itemname = Itemname;
		this.Itemprice = Itemprice;
		this.Stock = Stock;
	}

	public int getItemcode() {
		return Itemcode;
	}

	public void setItemcode(int itemcode) {
		Itemcode = itemcode;
	}

	public String getItemname() {
		return Itemname;
	}

	public void setItemname(String itemname) {
		Itemname = itemname;
	}

	public int getItemprice() {
		return Itemprice;
	}

	public void setItemprice(int itemprice) {
		Itemprice = itemprice;
	}

	public int getStock() {
		return Stock;
	}

	public void setStock(int stock) {
		Stock = stock;
	}

	
}
