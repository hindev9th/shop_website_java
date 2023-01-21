package WebShop.Dao;

import WebShop.Entity.ProductMapper;
import WebShop.Entity.Products;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class ProductDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    /**
     * @return StringBuffer query
     */
    public StringBuffer sqlStringBuffer() {
        StringBuffer query = new StringBuffer();
        query.append("SELECT pr.id, pr.category_id, pr.brand_id, pr.code, pr.name, tp.type, tp.code AS color_code, tp.name AS color_name, tp.price, tp.sale, tp.quantity, tp.sold, pr.image, img.image AS image_preview, pr.rate, pr.is_new, pr.is_highlights, pr.short_description, pr.describe, pr.create_at, pr.update_at ");
        query.append("FROM products pr ");
        query.append("INNER JOIN product_type tp ON pr.id = tp.product_id ");
        query.append("INNER JOIN product_image img ON pr.id = img.product_id ");
        return query;
    }

    /**
     *
     * @param where
     * @param group
     * @param order
     * @param limit
     * @return String query
     */
    public String getQuery(String where, String group, String order, String limit) {
        StringBuffer query = sqlStringBuffer();
        if (where != null && where != "" && !where.isEmpty())
            query.append("WHERE " + where + " ");
        if (group != null && group != "" && !group.isEmpty())
            query.append("GROUP by " + group + " ");
        if (order != null && order != "" && !order.isEmpty())
            query.append("ORDER " + order + " ");
        if (limit != null && limit != "" && !limit.isEmpty())
            query.append("LIMIT " + limit + " ");
        return query.toString();
    }

    public List<Products> getDataProducts() {
        List<Products> list = new ArrayList<Products>();
        String sql = getQuery("","","","");
        jdbcTemplate.query(sql, new ProductMapper());
        return list;
    }

    /**
     * @return arrayList products
     */
    public List<Products> getDataProductsFeatured() {
        List<Products> list = new ArrayList<Products>();
        String sql = getQuery("pr.is_highlights = 1","pr.id,tp.type","","0,16");;
        list = jdbcTemplate.query(sql, new ProductMapper());
        return list;
    }

    public List<Products> getDataProductsNew() {
        List<Products> list = new ArrayList<Products>();
        String sql = getQuery("pr.is_new = 1","pr.id,tp.type","","0,16");;
        list = jdbcTemplate.query(sql, new ProductMapper());
        return list;
    }
}
