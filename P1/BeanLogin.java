package beans;
public class BeanLogin {
	private String id, pw;	// �Է�: ���̵�, ��й�ȣ
	final String adm="adm", pwd="1248";

	public boolean checkUser() {
		if (id.equals(adm) && pw.equals(pwd)) return true;
		else return false;
	}
	public String getId() {return id;}		// getter
	public void setId(String id) {this.id=id;}		// setter
	public String getPw() {return pw;}		// getter
	public void setPw(String pw) {this.pw=pw;}	// setter
}