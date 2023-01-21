package WebShop.Entity;

public class Products {
    private int id;
    private int category_id;
    private int brand_id;
    private String code;
    private String name;
    private String type;
    private String color_code;
    private String color_name;
    private int price;
    private int sale;
    private int quantity;
    private int sold;
    private String image;
    private String image_preview;
    private int rate;
    private boolean is_new;
    private boolean is_highlights;
    private String short_description;
    private String describe;
    private String create_at;
    private String update_at;


    public Products() {
    }

    public Products(int id, int category_id, int brand_id, String code, String name, String type, String color_code, String color_name, int price, int sale, int quantity, int sold, String image, String image_preview, int rate, boolean is_new, boolean is_highlights, String short_description, String describe, String create_at, String update_at) {
        this.id = id;
        this.category_id = category_id;
        this.brand_id = brand_id;
        this.code = code;
        this.name = name;
        this.type = type;
        this.color_code = color_code;
        this.color_name = color_name;
        this.price = price;
        this.sale = sale;
        this.quantity = quantity;
        this.sold = sold;
        this.image = image;
        this.image_preview = image_preview;
        this.rate = rate;
        this.is_new = is_new;
        this.is_highlights = is_highlights;
        this.short_description = short_description;
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

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage_preview() {
        return image_preview;
    }

    public void setImage_preview(String image_preview) {
        this.image_preview = image_preview;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public boolean isIs_new() {
        return is_new;
    }

    public void setIs_new(boolean is_new) {
        this.is_new = is_new;
    }

    public boolean isIs_highlights() {
        return is_highlights;
    }

    public void setIs_highlights(boolean is_highlights) {
        this.is_highlights = is_highlights;
    }

    public String getShort_description() {
        return short_description;
    }

    public void setShort_description(String short_description) {
        this.short_description = short_description;
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

    @Override
    public String toString() {
        return "Products{" +
                "id=" + id +
                ", category_id=" + category_id +
                ", brand_id=" + brand_id +
                ", code='" + code + '\'' +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", color_code='" + color_code + '\'' +
                ", color_name='" + color_name + '\'' +
                ", price=" + price +
                ", sale=" + sale +
                ", quantity=" + quantity +
                ", sold=" + sold +
                ", image='" + image + '\'' +
                ", image_preview='" + image_preview + '\'' +
                ", rate=" + rate +
                ", is_new=" + is_new +
                ", is_highlights=" + is_highlights +
                ", short_description='" + short_description + '\'' +
                ", describe='" + describe + '\'' +
                ", create_at='" + create_at + '\'' +
                ", update_at='" + update_at + '\'' +
                '}';
    }
}
