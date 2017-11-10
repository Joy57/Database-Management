package user.domain;

public class author {
	/*
	 * Correspond to the user table
	 */
	
	private String email;
	private String name;
	private String affiliation;
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAffiliation() {
		return affiliation;
	}

	public void setAffiliation(String affiliation) {
		this.affiliation = affiliation;
	}

	@Override
	public String toString() {
		return "author [email=" +email+ ",name="
				+name+ ",affiliation=" +affiliation+"]";
	}


}
