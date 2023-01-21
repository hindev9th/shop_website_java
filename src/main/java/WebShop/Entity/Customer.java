package WebShop.Entity;

public class Customer {
    private int id;
    private String name;
    private String gender;
    private String date;
    private int phone;
    private String email;
    private String username;
    private String password;
    private String address;
    private String image;

    public Customer() {
    }

    public Customer(int id, String name, String gender, String date, int phone, String email,String username, String password, String address, String image) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.date = date;
        this.phone = phone;
        this.email = email;
        this.username = username;
        this.password = password;
        this.address = address;
        this.image = image;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", date='" + date + '\'' +
                ", phone=" + phone +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", address='" + address + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
