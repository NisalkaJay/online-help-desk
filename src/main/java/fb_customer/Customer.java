package fb_customer;

public class Customer {
	private int ID;
	private String Name;
	private String Email;
	private String Feedback;
	
	public Customer(int id,String name,String email,String feedback) {
		super();
		this.ID = id;
		this.Name = name;
		this.Email = email;
		this.Feedback = feedback;

		
	}

	public int getId_cfb() {
		return ID;
	}

	public String getCfb_name() {
		return Name;
	}

	public String getCfb_email() {
		return Email;
	}

	public String getCfb_feedback() {
		return Feedback;
	}

	
}
