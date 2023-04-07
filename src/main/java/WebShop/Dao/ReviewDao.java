package WebShop.Dao;

import WebShop.Entity.Review;
import WebShop.Entity.ReviewMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class ReviewDao {
    @Autowired
    protected JdbcTemplate jdbcTemplate;

    public List<Review> getDataReview(String code){
        List<Review> list = new ArrayList<>();
        String sql = "SELECT rv.id,rv.code,cm.name,cm.image,rv.rate,rv.content,rv.createAt FROM product_review as rv " +
                "INNER JOIN customers as cm ON cm.id = rv.customerId where code = ? order by createAt desc";
        list = this.jdbcTemplate.query(sql,new Object[]{code},new ReviewMapper());
        return list;
    }

    public List<Review> getDataReview(String code,int i){
        int min = i * 5;
        List<Review> list = new ArrayList<>();
        String sql = "SELECT rv.id,rv.code,cm.name,cm.image,rv.rate,rv.content,rv.createAt " +
                "FROM product_review as rv " +
                "INNER JOIN customers as cm ON cm.id = rv.customerId " +
                "where code = ? " +
                "order by createAt desc limit ?,5 ";
        list = this.jdbcTemplate.query(sql,new Object[]{code,min},new ReviewMapper());
        return list;
    }
}
