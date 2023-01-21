package WebShop.Controller.User;

import WebShop.Service.User.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.PostConstruct;

@Controller
public class BaseController {
    @Autowired
    HomeService HomeService;
    protected ModelAndView mv = new ModelAndView();

    @PostConstruct
    public ModelAndView Init(){
        mv.addObject("categories",HomeService.getDataCategories());
        mv.addObject("brands", HomeService.getDataBrands());
        return mv;
    }
}
