package WebShop.Service.User;

import WebShop.Entity.*;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface IHomeService {
    @Autowired
    public List<Category> getDataCategories();
    public List<Brand> getDataBrands();
    public List<Slider> getDataSliders();
    public List<Customer> getDataCustomers();
    public List<Product> getDataProductsFeatured();
    public List<Product> getDataProductsNew();
    public List<Product> getDataProductsTopRate();
    public List<Product> getDataProducts();
}
