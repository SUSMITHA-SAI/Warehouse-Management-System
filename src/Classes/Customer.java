package Classes;

public class Customer {
	private int Customercode;
	private String Customername;
	private int Phoneno;
	private String Address;
	private String Password;

	public Customer() {
		super();
	}

	public Customer(int Customercode, String Customername, int Phoneno, String Address, String Password) {
		super();
		this.Customercode = Customercode;
		this.Customername = Customername;
		this.Phoneno = Phoneno;
		this.Address = Address;
		this.Password = Password;
	}

	public int getCustomercode() {
		return Customercode;
	}

	public void setCustomercode(int customercode) {
		this.Customercode = customercode;
	}

	public String getCustomername() {
		return Customername;
	}

	public void setCustomername(String customername) {
		this.Customername = customername;
	}

	public int getPhoneno() {
		return Phoneno;
	}

	public void setPhoneno(int phoneno) {
		this.Phoneno = phoneno;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		this.Address = address;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		this.Password = password;
	}

}