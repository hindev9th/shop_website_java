package WebShop.Controller.User;

import WebShop.Entity.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController extends BaseController{
    @RequestMapping("/")
    public ModelAndView Index(){
        super.mv.addObject("sliders",super.HomeService.getDataSliders());
        super.mv.addObject("product_featured",super.HomeService.getDataProductsFeatured());
        super.mv.setViewName("user/index");
        return super.mv;
    }

    @RequestMapping(value = {"/signin"} , method = RequestMethod.POST)
    public String signin(@ModelAttribute("customer")Customer customer, BindingResult result, HttpServletRequest request){
        try {
            request.login(customer.getUsername(),customer.getPassword());
            return "/";
        }catch (ServletException e){
            result.reject("error.login", "Invalid username or password");
            return "signin";
        }
    }
}
