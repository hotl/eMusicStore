package com.emusicstore.service;

import com.emusicstore.model.Cart;


public interface CartService {

    Cart getCartById(int id);

    void update(Cart cart);
}
