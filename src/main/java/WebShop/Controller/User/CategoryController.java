package WebShop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategoryController extends BaseController {

    @GetMapping("/category")
    public ModelAndView Index(){

        super.mv.setViewName("user/category");
        return super.mv;
    }

    @RequestMapping(value = {"/category/{id}","/danh-muc/{id}"}, method = RequestMethod.GET)
    public ModelAndView category(@PathVariable("id") int id){
        super.mv.setViewName("user/category");
        return super.mv;
    }

}
