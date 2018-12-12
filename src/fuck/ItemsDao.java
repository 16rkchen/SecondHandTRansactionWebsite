package fuck;

public class ItemsDao{
	private String sellerId;
	private String itemName;
	private String price;
	private Image pic;
	public ItemsDao() {
		super();
	}
	public ItemsDao(String sellerId,String itemName,String price,Image pic) 
	{
		super();
		this.sellerId=sellerId;
		this.itemName=itemName;
		this.price=price;
		this.pic=pic;
	}
	public String getSellerId() {
		return sellerId;
	}
	public String getItemName() {
		return itemName;
	}
	public String getPrice() {
		return price;
	}
	public Image getPic() {
		return pic;
	}
}
