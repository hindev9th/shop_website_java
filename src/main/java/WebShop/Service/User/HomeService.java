package WebShop.Service.User;

import WebShop.Dao.*;
import WebShop.Entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HomeService implements IHomeService {
    @Autowired
    private CategoryDao categoryDao;

    @Autowired
    private BrandDao brandDao;

    @Autowired
    private SliderDao sliderDao;

    @Autowired
    private CustomerDao customerDao;

    @Autowired
    private ProductDao productDao;

    @Override
    public List<Category> getDataCategories() {
        return this.categoryDao.getDataCategories();
    }

    @Override
    public List<Brand> getDataBrands() {
        return this.brandDao.getDataBrands();
    }

    @Override
    public List<Slider> getDataSliders() {
        return this.sliderDao.getDataSliders();
    }

    @Override
    public List<Customer> getDataCustomers() {
        return this.customerDao.getDataCustomers();
    }

    @Override
    public List<Product> getDataProductsFeatured() {return this.productDao.getDataProductsFeatured();
    }
    @Override
    public List<Product> getDataProductsNew() {
        return this.productDao.getDataProductsNew();
    }

    @Override
    public List<Product> getDataProductsTopRate() {return  this.productDao.getDataProductsTopRate();}

    @Override
    public List<Product> getDataProducts() {return this.productDao.getDataProducts();}
}
