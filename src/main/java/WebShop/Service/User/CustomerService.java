package WebShop.Service.User;

import WebShop.Dao.CustomerDao;
import WebShop.Entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService implements ICuscomerService{
    @Autowired
    CustomerDao customerDao;

    @Override
    public Customer login(String username, String password) {
        return this.customerDao.login(username,password);
    }
}
