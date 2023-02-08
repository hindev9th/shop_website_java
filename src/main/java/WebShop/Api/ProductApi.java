package WebShop.Api;

import WebShop.Entity.Product;
import WebShop.Service.User.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/product")
public class ProductApi {
    @Autowired
    HomeService homeService;

    @GetMapping
    public List<Product> getProducts(){
        List<Product> products = new ArrayList<>();
        products = homeService.getDataProducts();
        return products;
    }
}
