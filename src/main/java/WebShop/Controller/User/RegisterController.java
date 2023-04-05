package WebShop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController extends BaseController{
    @RequestMapping(value = "/register")
    public String index(){
        return "user/register";
    }
}
