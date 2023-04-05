package WebShop.Entity;

public class Review {
    private int id;
    private String code;
    private String name;
    private String image;
    private int rate;
    private String content;
    private String createAt;

    public Review() {
    }

    public Review(int id, String code, String name, String image, int rate, String content, String createAt) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.image = image;
        this.rate = rate;
        this.content = content;
        this.createAt = createAt;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }
}
