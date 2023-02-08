package WebShop.Dao;

import WebShop.Entity.ProductMapper;
import WebShop.Entity.Product;
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
        query.append("SELECT pr.id, pr.code, pr.name, pr.categoryId, pr.brandId, pr.type,  pr.price, pr.sale, pr.quantity, pr.sold,color.code AS color_code, color.name AS color_name,color.quantity AS color_quantity, color.sold AS color_sold, pr.image, color.image AS color_image, pr.rate, pr.isNew, pr.isHighlights, pr.info, pr.describe, pr.createAt, pr.updateAt");
        query.append(" FROM product pr ");
        query.append(" INNER JOIN product_color color ON pr.id = color.productId");
        return query;
    }

    /**
     * @param where
     * @param group
     * @param order
     * @param limit
     * @return String query
     */
    public String getQuery(String where, String group, String order, String limit) {
        StringBuffer query = sqlStringBuffer();
        if (where != null && where != "" && !where.isEmpty())
            query.append(" WHERE " + where);
        if (group != null && group != "" && !group.isEmpty())
            query.append(" GROUP by " + group );
        if (order != null && order != "" && !order.isEmpty())
            query.append(" ORDER by " + order );
        if (limit != null && limit != "" && !limit.isEmpty())
            query.append(" LIMIT " + limit );
        return query.toString();
    }

    public List<Product> getDataProducts() {
        List<Product> list = new ArrayList<Product>();
        String sql = getQuery("", "", "", "");
        list = jdbcTemplate.query(sql, new ProductMapper());
        return list;
    }

    /**
     * @return arrayList products
     */
    public List<Product> getDataProductsFeatured() {
        List<Product> list = new ArrayList<Product>();
        String sql = getQuery("pr.isHighlights = 1", "pr.id,pr.type", "", "0,16");
        list = jdbcTemplate.query(sql, new ProductMapper());
        return list;
    }

    public List<Product> getDataProductsNew() {
        List<Product> list = new ArrayList<Product>();
        String sql = getQuery("pr.isNew = 1", "pr.id,pr.type", "", "0,16");
        list = jdbcTemplate.query(sql, new ProductMapper());
        return list;
    }

    public List<Product> getDataProductsTopRate() {
        List<Product> list = new ArrayList<Product>();
        String sql = getQuery("", "pr.code", "pr.rate DESC", "0,16");
        list = jdbcTemplate.query(sql, new ProductMapper());
        return list;
    }
}
