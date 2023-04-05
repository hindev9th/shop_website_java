package WebShop.Dao;

import WebShop.Entity.Customer;
import WebShop.Entity.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CustomerDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Customer> getDataCustomers() {
        List<Customer> list = new ArrayList<Customer>();
        String sql = "SELECT * from customers";
        list = this.jdbcTemplate.query(sql, new CustomerMapper());
        return list;
    }

    public Customer login(String username, String password) {
        List<Customer> list = new ArrayList<Customer>();
        String sql = "SELECT * from customers where username = ? and password = ?";
        list = this.jdbcTemplate.query(sql, new Object[]{username, password}, new CustomerMapper());
        if (list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    public Boolean register(Customer customer) {
        String sql = "INSERT INTO customers(username, password, name, gender, date, phone, email, address, image) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        int rows = jdbcTemplate.update(sql, customer.getUsername(), customer.getPassword(), customer.getName(), customer.getGender(), customer.getDate(),                                           customer.getPhone(), customer.getEmail(), customer.getAddress(), customer.getImage());

        return rows > 0;
    }

    public Customer save(Customer customer) {
        return null;
    }

    public Boolean exists(String username) {
        List<Customer> list = new ArrayList<Customer>();
        String sql = "SELECT * from customers where username = ?";
        list = this.jdbcTemplate.query(sql, new Object[]{username}, new CustomerMapper());

        if (list.size() > 0) {
            return true;
        }
        return false;
    }
}
