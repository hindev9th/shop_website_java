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

    public List<Customer> getDataCustomers(){
        List<Customer> list = new ArrayList<Customer>();
        String sql = "SELECT * from customer";
        list = this.jdbcTemplate.query(sql,new CustomerMapper());
        return list;
    }

    public Customer login(String username,String password){
        Customer customer;
        String sql = "SELECT * from customer where username = ? and password = ?";
        customer = this.jdbcTemplate.queryForObject(sql,new Object[]{username,password},new CustomerMapper());
        return customer;
    }
}
