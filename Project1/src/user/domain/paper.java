package user.domain;

public class paper {
	/*
	 * Correspond to the user table
	 */
	
	private int paperID;
	private String title;
	private String abstracts;
	private String pdf;
	
	
	public int getPaperID() {
		return paperID;
	}


	public void setPaperID(int paperID) {
		this.paperID = paperID;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getAbstracts() {
		return abstracts;
	}


	public void setAbstracts(String abstracts) {
		this.abstracts = abstracts;
	}


	public String getPdf() {
		return pdf;
	}


	public void setPdf(String pdf) {
		this.pdf = pdf;
	}


	@Override
	public String toString() {
		return "paper [ paperID=" +paperID+ ", title="
				+title + ", Abstract=" + abstracts +",pdf="+pdf+"]";
	}


}
