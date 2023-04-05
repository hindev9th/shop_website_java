package WebShop.Service.User;

import WebShop.Entity.Brand;
import WebShop.Entity.Category;
import WebShop.Entity.Product;
import WebShop.Entity.Review;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface IProductService {

    public Category getCategory(int id);
    public Brand getBrad(int id);
    public List<Product> getProduct(int id);
    public List<Product> getProduct(String code);
    public Product getProduct(int id,int colorId);
    public List<Review> getDataReview(String code);
    public List<Review> getDataReview(String code, int i);
}
