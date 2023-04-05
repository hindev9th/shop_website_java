package WebShop.Controller.User;

import WebShop.Service.User.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController extends BaseController{
    @Autowired
    ProductService productService;

    @RequestMapping(value = {"/product/{id}","/san-pham/{id}"}, method = RequestMethod.GET)
    public ModelAndView product(@PathVariable("id") int id){
        String code = this.productService.getProduct(id).get(0).getCode();
        int categoryId = this.productService.getProduct(id).get(0).getCategoryId();
        int brandId = this.productService.getProduct(id).get(0).getBrandId();

        super.mv.addObject("product",this.productService.getProduct(id));
        super.mv.addObject("productType",this.productService.getProduct(code));
        super.mv.addObject("productReview",this.productService.getDataReview(code));
        super.mv.addObject("category",this.productService.getCategory(categoryId));
        super.mv.addObject("brand",this.productService.getBrad(brandId));
        super.mv.setViewName("user/product");
        return super.mv;
    }

    @GetMapping("/ajax/review/{id}/{i}")
    public String Review(@PathVariable("id") int id, @PathVariable("i") int i, Model model){
        String code = this.productService.getProduct(id).get(0).getCode();
        model.addAttribute("productReview",this.productService.getDataReview(code,i));
        return "/user/ajax/product/productReview";
    }
}
