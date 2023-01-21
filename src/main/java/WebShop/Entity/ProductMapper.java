package WebShop.Entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Products> {
    @Override
    public Products mapRow(ResultSet resultSet, int i) throws SQLException {
        Products products = new Products();
        products.setId(resultSet.getInt("id"));
        products.setCategory_id(resultSet.getInt("category_id"));
        products.setBrand_id(resultSet.getInt("brand_id"));
        products.setCode(resultSet.getString("code"));
        products.setName(resultSet.getString("name"));
        products.setType(resultSet.getString("type"));
        products.setColor_code(resultSet.getString("color_code"));
        products.setColor_name(resultSet.getString("color_name"));
        products.setPrice(resultSet.getInt("price"));
        products.setSale(resultSet.getInt("sale"));
        products.setQuantity(resultSet.getInt("quantity"));
        products.setSold(resultSet.getInt("sold"));
        products.setImage(resultSet.getString("image"));
        products.setImage_preview(resultSet.getString("image_preview"));
        products.setRate(resultSet.getInt("rate"));
        products.setIs_new(resultSet.getBoolean("is_new"));
        products.setIs_highlights(resultSet.getBoolean("is_highlights"));
        products.setShort_description(resultSet.getString("short_description"));
        products.setDescribe(resultSet.getString("describe"));
        products.setCreate_at(resultSet.getString("create_at"));
        products.setUpdate_at(resultSet.getString("update_at"));
        return products;
    }
}
