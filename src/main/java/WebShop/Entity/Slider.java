package WebShop.Entity;

public class Slider {
    private int id;
    private String url;
    private String title;
    private String content;
    private String image;
    private int position;

    public Slider() {
    }

    public Slider(int id, String url, String title, String content, String image, int position) {
        this.id = id;
        this.url = url;
        this.title = title;
        this.content = content;
        this.image = image;
        this.position = position;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int positon) {
        this.position = positon;
    }
}
