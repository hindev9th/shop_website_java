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
    public List<Products> getDataProductsFeatured() {
        return this.productDao.getDataProductsFeatured();
    }
}
