package WebShop.Entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerMapper implements RowMapper<Customer> {
    @Override
    public Customer mapRow(ResultSet resultSet, int i) throws SQLException {
        Customer customer = new Customer();
        customer.setId(resultSet.getInt("id"));
        customer.setUsername(resultSet.getString("username"));
        customer.setPassword(resultSet.getString("password"));
        customer.setName(resultSet.getString("name"));
        customer.setGender(resultSet.getString("gender"));
        customer.setDate(resultSet.getString("date"));
        customer.setPhone(resultSet.getInt("phone"));
        customer.setEmail(resultSet.getString("email"));
        customer.setAddress(resultSet.getString("address"));
        customer.setImage(resultSet.getString("image"));
        customer.setCreateAt(resultSet.getString("createAt"));
        customer.setUpdateAt(resultSet.getString("updateAt"));
        return customer;
    }
}
