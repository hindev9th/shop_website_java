package WebShop.Service.User;

import WebShop.Entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;

public interface ICuscomerService {
    @Autowired
    public Customer login(String username,String password);
}
