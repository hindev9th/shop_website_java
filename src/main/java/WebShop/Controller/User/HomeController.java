package WebShop.Controller.User;

import WebShop.Entity.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.GetMapping;
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
        super.mv.addObject("product_new",super.HomeService.getDataProductsNew());
        super.mv.addObject("product_top",super.HomeService.getDataProductsTopRate());
        super.mv.setViewName("user/index");
        return super.mv;
    }

    @GetMapping("/error")
    public ModelAndView Error(){
        super.mv.setViewName("user/error");
        return super.mv;
    }
}
