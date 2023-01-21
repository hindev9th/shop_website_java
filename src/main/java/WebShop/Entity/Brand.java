package WebShop.Entity;

public class Brand {
    private int id;
    private String code;
    private String name;
    private String image;

    public Brand(){}

    public Brand(int id, String code, String name, String image) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.image = image;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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
}
