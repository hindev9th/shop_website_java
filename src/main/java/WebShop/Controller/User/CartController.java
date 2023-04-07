package WebShop.Controller.User;

import WebShop.Entity.Cart;
import WebShop.Entity.Product;
import WebShop.Service.User.ProductService;
import com.fasterxml.jackson.databind.util.JSONPObject;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CartController extends BaseController{
    @Autowired
    ProductService productService;

    @GetMapping(value = "/cart",produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public String index(){
        return "user/cart";
    }

    @RequestMapping(value ="/ajax/cart/add",method = RequestMethod.POST,produces = "application/x-www-form-urlencoded;charset=UTF-8")
    @ResponseBody
    public String addToCart(@RequestParam("id") int id,
                                    @RequestParam("colorId") int colorId,
                                    @RequestParam("i") int i,
                                    HttpSession session) {
        Product product = productService.getProduct(id, colorId);
        String message = "";
        int status = 0;
        int quantity = i;
        JSONObject response = new JSONObject();
        if (product.getColorQuantity() <= quantity) {
            message = "Sản phẩm " + product.getName() + " : " + product.getType() + " : " + product.getColorName() + " đã hết hàng.";
            status = 404;
        }else {
            message = "Thêm sản phẩm " + product.getName() + " : " + product.getType() + " : " + product.getColorName() + " thành công.";
            status = 200;
        }


        List<Cart> carts = getCartsFromSession(session);
        updateCart(carts, product, quantity);
        updateSessionAttributes(session, carts);

        JSONArray cartArray = getCartArray(carts);;

        int count = Integer.parseInt(session.getAttribute("countCart").toString());
        int subtotal = Integer.parseInt(session.getAttribute("subtotalCart").toString());
        int totalSave = Integer.parseInt(session.getAttribute("totalSave").toString());

        response.put("status",status);
        response.put("message",message);
        response.put("cCart",count);
        response.put("sTotalCart",subtotal);
        response.put("tSave",totalSave);
        response.put("cartList",cartArray);


        return response.toString();

    }


    @RequestMapping(value = "/ajax/cart/delete",produces = "application/x-www-form-urlencoded;charset=UTF-8")
    @ResponseBody
    public String deleteCartItem(@RequestParam("id") int id,@RequestParam("colorId") int colorId, HttpSession session) {
        List<Cart> carts = getCartsFromSession(session);
        boolean itemRemoved = false;
        for (Cart cart : carts) {
            if (cart.getProductId() == id && cart.getColorId() == colorId) {
                carts.remove(cart);
                itemRemoved = true;
                break;
            }
        }
        if (itemRemoved) {
            updateSessionAttributes(session, carts);
            JSONObject response = new JSONObject();
            JSONArray cartArray = getCartArray(carts);
            int count = Integer.parseInt(session.getAttribute("countCart").toString());
            int subtotal = Integer.parseInt(session.getAttribute("subtotalCart").toString());
            int totalSave = Integer.parseInt(session.getAttribute("totalSave").toString());
            response.put("status", 200);
            response.put("message", "Item removed from cart");
            response.put("cCart", count);
            response.put("sTotalCart", subtotal);
            response.put("cartList", cartArray);
            response.put("tSave",totalSave);
            return response.toString();
        } else {
            JSONObject response = new JSONObject();
            response.put("status", 404);
            response.put("message", "Item not found in cart");
            return response.toString();
        }
    }

    private JSONArray getCartArray(List<Cart> carts) {
        JSONArray cartArray = new JSONArray();
        for (Cart cart : carts) {
            JSONObject cartObj = new JSONObject();
            cartObj.put("productId", cart.getProductId());
            cartObj.put("name", cart.getName());
            cartObj.put("type", cart.getType());
            cartObj.put("colorId", cart.getColorId());
            cartObj.put("colorCode", cart.getColorCode());
            cartObj.put("colorName", cart.getColorName());
            cartObj.put("price", cart.getPrice());
            cartObj.put("sale", cart.getSale());
            cartObj.put("quantity", cart.getQuantity());
            cartObj.put("image", cart.getImage());
            cartArray.put(cartObj);
        }
        return cartArray;
    }


    private List<Cart> getCartsFromSession(HttpSession session) {
        List<Cart> carts = (List<Cart>) session.getAttribute("cart");
        if (carts == null) {
            carts = new ArrayList<>();
        }
        return carts;
    }

    private void updateCart(List<Cart> carts, Product product, int quantity) {
        boolean itemExists = false;
        for (Cart cart : carts) {
            if (cart.getProductId() == product.getId() && cart.getColorId() == product.getColorId()) {
                cart.setQuantity(cart.getQuantity() + quantity);
                if(cart.getQuantity() < 1)  {
                    carts.remove(cart);
                }
                itemExists = true;
                break;
            }
        }
        if (!itemExists) {
            Cart cart = new Cart(product.getId(), product.getName(),product.getType(), product.getColorId(),
                    product.getColorCode(), product.getColorName(),
                    product.getPrice(), product.getSale(), quantity, product.getImage());
            carts.add(cart);
        }
    }

    private void updateSessionAttributes(HttpSession session, List<Cart> carts) {
        int subtotal = 0;
        int sumQuantity = 0;
        int totalSave = 0;
        for (Cart cart : carts) {
            sumQuantity += cart.getQuantity();
            subtotal += cart.getSale() > 0 ? cart.getSale() * cart.getQuantity() : cart.getPrice() * cart.getQuantity();

            if(cart.getSale() > 0 && cart.getSale() < cart.getPrice()){
                totalSave += (cart.getPrice() * cart.getQuantity() - cart.getSale() * cart.getQuantity());
            }
        }
        session.setAttribute("subtotalCart", subtotal);
        session.setAttribute("totalSave", totalSave);
        session.setAttribute("countCart", sumQuantity);
        session.setAttribute("cart", carts);
    }
}
