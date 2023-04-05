package WebShop.Dao;

import WebShop.Entity.Brand;
import WebShop.Entity.BrandMapper;
import WebShop.Entity.Category;
import WebShop.Entity.CategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class BrandDao {
    @Autowired
    protected JdbcTemplate jdbcTemplate;

    public List<Brand> getDataBrands() {
        List<Brand> list = new ArrayList<Brand>();
        String sql = "SELECT * from brand";
        list = this.jdbcTemplate.query(sql, new BrandMapper());
        return list;
    }

    public Brand getCategory(int id) {
        List<Brand> list = new ArrayList<>();
        String sql = "SELECT * from brand where id = " + id;
        list = this.jdbcTemplate.query(sql, new BrandMapper());

        return list.get(0);
    }
}
