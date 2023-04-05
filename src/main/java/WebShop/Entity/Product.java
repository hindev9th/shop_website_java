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
    private int colorId;
    private String colorCode;
    private String colorName;
    private int colorQuantity;
    private int colorSold;
    private String colorImage;
    private int rate;
    private boolean isNew;
    private boolean isHighlights;
    private String info;
    private String describe;
    private String createAt;
    private String updateAt;


    public Product() {
    }

    public Product(int id, String code, String name, int brandId, int categoryId, String type, int price, int sale, int quantity, int sold, String image, int colorId, String colorCode, String colorName, int colorQuantity, int colorSold, String colorImage, int rate, boolean isNew, boolean isHighlights, String info, String describe, String createAt, String updateAt) {
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
        this.image = image;
        this.colorId = colorId;
        this.colorCode = colorCode;
        this.colorName = colorName;
        this.colorQuantity = colorQuantity;
        this.colorSold = colorSold;
        this.colorImage = colorImage;
        this.rate = rate;
        this.isNew = isNew;
        this.isHighlights = isHighlights;
        this.info = info;
        this.describe = describe;
        this.createAt = createAt;
        this.updateAt = updateAt;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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

    public int getColorQuantity() {
        return colorQuantity;
    }

    public void setColorQuantity(int colorQuantity) {
        this.colorQuantity = colorQuantity;
    }

    public int getColorSold() {
        return colorSold;
    }

    public void setColorSold(int colorSold) {
        this.colorSold = colorSold;
    }

    public void setColorImage(String color_image) {
        this.colorImage = color_image;

        if (color_image.equals("null") || color_image == null){
            this.colorImage = "";
        }
    }

    public String getColorImage() {
        return colorImage;
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

    public void setNew(boolean aNew) {
        isNew = aNew;
    }

    public boolean isHighlights() {
        return isHighlights;
    }

    public void setHighlights(boolean highlights) {
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

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String create_at) {
        this.createAt = createAt;
    }

    public String getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(String updateAt) {
        this.updateAt = updateAt;
    }

}
