package user;

public class Brand {
	
	private int id;
	private String title;
	private int price;
	private int gubun;
	private String gubun_title;
	private String img;
	private int productinfoid;
	
	public int getProductinfoid() {
		return productinfoid;
	}
	public void setProductinfoid(int productinfoid) {
		this.productinfoid = productinfoid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getGubun() {
		return gubun;
	}
	public void setGubun(int gubun) {
		this.gubun = gubun;
	}
	public String getGubun_title() {
		return gubun_title;
	}
	public void setGubun_title(String gubun_title) {
		this.gubun_title = gubun_title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}

}
