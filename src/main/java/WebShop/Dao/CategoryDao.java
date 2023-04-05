package WebShop.Dao;

import WebShop.Entity.Category;
import WebShop.Entity.CategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public class CategoryDao {
    @Autowired
    protected JdbcTemplate jdbcTemplate;

    public List<Category> getDataCategories() {
        List<Category> list = new ArrayList<Category>();
        String sql = "SELECT * from category";
        list = this.jdbcTemplate.query(sql, new CategoryMapper());
        return list;
    }

    public Category getCategory(int id) {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * from category where id = " + id;
        list = this.jdbcTemplate.query(sql, new CategoryMapper());

        return list.get(0);
    }
}
