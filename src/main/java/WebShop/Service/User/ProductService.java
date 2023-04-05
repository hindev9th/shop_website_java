package WebShop.Service.User;

import WebShop.Dao.BrandDao;
import WebShop.Dao.CategoryDao;
import WebShop.Dao.ProductDao;
import WebShop.Dao.ReviewDao;
import WebShop.Entity.Brand;
import WebShop.Entity.Category;
import WebShop.Entity.Product;
import WebShop.Entity.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService implements IProductService {
    @Autowired
    private ProductDao productDao;
    @Autowired
    private CategoryDao categoryDao;
    @Autowired
    private BrandDao brandDao;
    @Autowired
    private ReviewDao reviewDao;

    @Override
    public Category getCategory(int id) {
        return this.categoryDao.getCategory(id);
    }

    @Override
    public Brand getBrad(int id) {
        return this.brandDao.getCategory(id);
    }

    @Override
    public List<Product> getProduct(int id) {
        return this.productDao.getProduct(id);
    }

    @Override
    public List<Product> getProduct(String code) {
        return this.productDao.getProduct(code);
    }

    @Override
    public Product getProduct(int id, int colorId) {
        return this.productDao.getProduct(id,colorId);
    }


    @Override
    public List<Review> getDataReview(String code) {
        return this.reviewDao.getDataReview(code);
    }

    @Override
    public List<Review> getDataReview(String code, int i) {
        return this.reviewDao.getDataReview(code, i);
    }
}
