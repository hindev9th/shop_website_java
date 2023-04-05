package WebShop.Controller.User;

import WebShop.Entity.Brand;
import WebShop.Entity.Customer;
import WebShop.Service.User.CustomerService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class LoginController extends BaseController{
    @Autowired
    CustomerService customerService;

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public ModelAndView Signin(HttpSession session){

        super.mv.setViewName("user/index");
        if (session.getAttribute("customer") == null){
            super.mv.setViewName("user/login");
        }
        return super.mv;
    }

    @RequestMapping(value = {"/signoup"})
    public ModelAndView Signoup(){
        super.mv.setViewName("user/register");
        return super.mv;
    }

    @PostMapping(value = {"/login"},produces = "application/x-www-form-urlencoded;charset=UTF-8")
    @ResponseBody
    public String login(@RequestParam String username,
                                @RequestParam String password,
                                HttpSession session) {

        Customer customer = this.customerService.login(username, password);
        String message = "";
        int status = 0;

        JSONObject jsonObject = new JSONObject();

        message = "Thông tin tài khoản của bạn không đúng.";
        status = 400;

        if (customer != null) {
            session.setAttribute("customer", customer);
            status = 200;
            message = "Đăng nhập thành công";
        }

        jsonObject.put("status",status);
        jsonObject.put("message",message);
        return jsonObject.toString();
    }

    @RequestMapping(value = {"/logout","signout"}, method = RequestMethod.GET)
    public String logout(HttpSession session){
        session.removeAttribute("customer");
        return "redirect:/login";
    }

}
