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
        products.setColorId(resultSet.getInt("colorId"));
        products.setColorCode(resultSet.getString("colorCode"));
        products.setColorName(resultSet.getString("colorName"));
        products.setColorQuantity(resultSet.getInt("colorQuantity"));
        products.setColorSold(resultSet.getInt("colorSold"));
        products.setColorImage(resultSet.getString("colorImage"));
        products.setRate(resultSet.getInt("rate"));
        products.setNew(resultSet.getBoolean("isNew"));
        products.setHighlights(resultSet.getBoolean("isHighlights"));
        products.setInfo(resultSet.getString("info"));
        products.setDescribe(resultSet.getString("describe"));
        products.setCreateAt(resultSet.getString("createAt"));
        products.setUpdateAt(resultSet.getString("updateAt"));
        return products;
    }
}
