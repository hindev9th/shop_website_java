package WebShop.Entity;

public class Brand {
    private int id;
    private String name;
    private String logo;

    public Brand(){}

    public Brand(int id, String name, String logo) {
        this.id = id;
        this.name = name;
        this.logo = logo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
}
