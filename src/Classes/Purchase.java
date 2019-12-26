package Classes;


public class Purchase {
	private int TransactionID;
	private int Customercode;
	private int Itemcode;
	private String Dateofpur;
	private int Quantity;

	public Purchase() {
		super();
	}
	
	public Purchase(int TransactionID, int Customercode, int Itemcode, String Dateofpur, int Quantity) {
		super();
		this.TransactionID = TransactionID;
		this.Customercode = Customercode;
		this.Itemcode = Itemcode;
		this.Dateofpur = Dateofpur;
		this.Quantity = Quantity;
	}

	public int getTransactionID() {
		return TransactionID;
	}

	public void setTransactionID(int transactionID) {
		TransactionID = transactionID;
	}

	public int getCustomercode() {
		return Customercode;
	}

	public void setCustomercode(int customercode) {
		Customercode = customercode;
	}

	public int getItemcode() {
		return Itemcode;
	}

	public void setItemcode(int itemcode) {
		Itemcode = itemcode;
	}

	public String getDateofpur() {
		return Dateofpur;
	}

	public void setDateofpur(String dateofpur) {
		Dateofpur = dateofpur;
	}

	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
}
