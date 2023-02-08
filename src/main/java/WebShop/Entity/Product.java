package WebShop.Entity;

public class Product {
    private int id;
    private String code;
    private String name;
    private int brandId;
    private int categoryId;
    private String type;
    private int price;
    private int sale;
    private int quantity;
    private int sold;
    private String image;
    private String color_code;
    private String color_name;
    private int color_quantity;
    private int color_sold;
    private String color_image;
    private int rate;
    private boolean isNew;
    private boolean isHighlights;
    private String info;
    private String describe;
    private String create_at;
    private String update_at;


    public Product() {
    }

    public Product(int id, String code, String name, int brandId, int categoryId, String type, int price, int sale, int quantity, int sold, String color_code, String color_name, int color_quantity, int color_sold, String image, String color_image, int rate, boolean isNew, boolean isHighlights, String info, String describe, String create_at, String update_at) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.brandId = brandId;
        this.categoryId = categoryId;
        this.type = type;
        this.price = price;
        this.sale = sale;
        this.quantity = quantity;
        this.sold = sold;
        this.color_code = color_code;
        this.color_name = color_name;
        this.color_quantity = color_quantity;
        this.color_sold = color_sold;
        this.image = image;
        this.color_image = color_image;
        this.rate = rate;
        this.isNew = isNew;
        this.isHighlights = isHighlights;
        this.info = info;
        this.describe = describe;
        this.create_at = create_at;
        this.update_at = update_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public String getColor_code() {
        return color_code;
    }

    public void setColor_code(String color_code) {
        this.color_code = color_code;
    }

    public String getColor_name() {
        return color_name;
    }

    public void setColor_name(String color_name) {
        this.color_name = color_name;
    }

    public int getColor_quantity() {
        return color_quantity;
    }

    public void setColor_quantity(int color_quantity) {
        this.color_quantity = color_quantity;
    }

    public int getColor_sold() {
        return color_sold;
    }

    public void setColor_sold(int color_sold) {
        this.color_sold = color_sold;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getColor_image() {
        return color_image;
    }

    public void setColor_image(String color_image) {
        this.color_image = color_image;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public boolean isNew() {
        return isNew;
    }

    public void setIsNew(boolean aNew) {
        isNew = aNew;
    }

    public boolean isHighlights() {
        return isHighlights;
    }

    public void setIsHighlights(boolean highlights) {
        isHighlights = highlights;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getCreate_at() {
        return create_at;
    }

    public void setCreate_at(String create_at) {
        this.create_at = create_at;
    }

    public String getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(String update_at) {
        this.update_at = update_at;
    }
}
