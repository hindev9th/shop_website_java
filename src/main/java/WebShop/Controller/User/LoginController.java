package WebShop.Controller.User;

import WebShop.Entity.Customer;
import WebShop.Service.User.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController extends BaseController{
    @Autowired
    CustomerService customerService;

    @RequestMapping(value = {"/signin"})
    public ModelAndView Signin(){
        super.mv.setViewName("user/login");
        return super.mv;
    }
    @RequestMapping(value = {"/signoup"})
    public ModelAndView Signoup(){
        super.mv.setViewName("user/register");
        return super.mv;
    }

    @PostMapping(value = {"/login"})
    public String login(@RequestParam String username,
                        @RequestParam String password,
                        HttpSession session,
                        Model model) {

        Customer customer = this.customerService.login(username, password);
        if (customer != null) {
            session.setAttribute("customer", customer);
            return "redirect:/";
        }
        model.addAttribute("errorMessage", "Invalid username or password.");
        return "/signin";
    }
}
