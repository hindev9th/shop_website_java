package WebShop.Entity;

public class Cart {
    private int productId;
    private String name;
    private String type;
    private int colorId;
    private String colorCode;
    private String colorName;
    private int price;
    private int sale;
    private int quantity;
    private String image;

    public Cart() {
    }

    public Cart(int productId, String name,String type, int colorId, String colorCode,String colorName, int price,
                int sale, int quantity
            , String image) {
        this.productId = productId;
        this.name = name;
        this.type = type;
        this.colorId = colorId;
        this.colorCode = colorCode;
        this.colorName = colorName;
        this.price = price;
        this.sale = sale;
        this.quantity = quantity;
        this.image = image;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getColorId() {
        return colorId;
    }

    public void setColorId(int colorId) {
        this.colorId = colorId;
    }

    public String getColorCode() {
        return colorCode;
    }

    public void setColorCode(String colorCode) {
        this.colorCode = colorCode;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
