/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author EndlessLove
 */
public class Cart {

    private HashMap<Long, Item> cartItems;

    public Cart() {
        cartItems = new HashMap<>();
    }

    public Cart(HashMap<Long, Item> cartItems) {
        this.cartItems = cartItems;
    }

    public HashMap<Long, Item> getCartItems() {
        return cartItems;
    }

    public void setCartItems(HashMap<Long, Item> cartItems) {
        this.cartItems = cartItems;
    }

    //Them san pham vao gio hang
    public void doCart(Long key, Item item) {
        // Kiem tra mat hang da co trong cart chua ?
        //Neu co thi tang so luong san pham trong cart len 1
        //Neu khong thi them mat hang do vao gio hang
        boolean check = cartItems.containsKey(key);
        if (check) {
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old + 1);
            cartItems.put(item.getProduct().getProductID(), item);
        } else {
            cartItems.put(item.getProduct().getProductID(), item);
        }
    }

    //Xoa san pham ra khoi gio hang
    public void removeToCart(Long product) {
        boolean check = cartItems.containsKey(product);
        if (check) {
            cartItems.remove(product);
        }
    }

    //Tong san pham co trong gio hang
    public int countItem() {
        int count = 0;
        count = cartItems.size();
        return count;
    }

    //Tinh tien
    public double total() {
        int count = 0;
        for (Map.Entry<Long, Item> list : cartItems.entrySet()) {
            count += list.getValue().getProduct().getProductPrice() * list.getValue().getQuantity();
        }
        return count;
    }
}
