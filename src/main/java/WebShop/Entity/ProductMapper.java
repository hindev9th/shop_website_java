package WebShop.Entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Product> {
    @Override
    public Product mapRow(ResultSet resultSet, int i) throws SQLException {
        Product products = new Product();
        products.setId(resultSet.getInt("id"));
        products.setCategoryId(resultSet.getInt("categoryId"));
        products.setBrandId(resultSet.getInt("brandId"));
        products.setCode(resultSet.getString("code"));
        products.setName(resultSet.getString("name"));
        products.setType(resultSet.getString("type"));
        products.setPrice(resultSet.getInt("price"));
        products.setSale(resultSet.getInt("sale"));
        products.setQuantity(resultSet.getInt("quantity"));
        products.setSold(resultSet.getInt("sold"));
        products.setImage(resultSet.getString("image"));
        products.setColor_code(resultSet.getString("color_code"));
        products.setColor_name(resultSet.getString("color_name"));
        products.setColor_quantity(resultSet.getInt("color_quantity"));
        products.setColor_sold(resultSet.getInt("color_sold"));
        products.setColor_image(resultSet.getString("color_image"));
        products.setRate(resultSet.getInt("rate"));
        products.setIsNew(resultSet.getBoolean("isNew"));
        products.setIsHighlights(resultSet.getBoolean("isHighlights"));
        products.setInfo(resultSet.getString("info"));
        products.setDescribe(resultSet.getString("describe"));
        products.setCreate_at(resultSet.getString("createAt"));
        products.setUpdate_at(resultSet.getString("updateAt"));
        return products;
    }
}
