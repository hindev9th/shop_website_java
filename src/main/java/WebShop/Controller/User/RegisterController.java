package WebShop.Controller.User;

import WebShop.Entity.Customer;
import WebShop.Service.User.CustomerService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class RegisterController extends BaseController {
    @Autowired
    CustomerService customerService;

    @GetMapping(value = "/register")
    public ModelAndView index(HttpSession session) {
        mv.setViewName("user/index");

        if (session.getAttribute("customer") == null) {
            mv.setViewName("user/register");
            mv.addObject("customer", new Customer());
        }
        return mv;
    }

    @PostMapping(value = "/register", produces = "application/x-www-form-urlencoded;charset=UTF-8")
    @ResponseBody
    public String register(@ModelAttribute("customer") Customer customer, HttpSession session) {
        String message = "";
        int status = 0;
        JSONObject jsonObject = new JSONObject();
        
        if (customerService.exists(customer.getUsername())) {
            status = 300;
            message = "Tài khoản đăng ký của bạn đã tồn tại.";
        } else {
            if (customerService.register(customer)) {
                status = 200;
                message = "Đăng ký thành công";
                session.setAttribute("customer",customer);
            } else {
                status = 400;
                message = "Lỗi không thể đăng ký thông tin tài khoản. Vui lòng thử lại sau.";
            }
        }

        jsonObject.put("status", status);
        jsonObject.put("message", message);

        return jsonObject.toString();
    }
}
