/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import com.valensi.model.Products;
import com.valensi.dao.ProductService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/bucketShop")
public class CartsController {
    @Autowired
    ProductService service;
    
    @RequestMapping()
    public String bucket(HttpSession session, Model model){
    List<Products> listProd=(List<Products>) session.getAttribute("bucket");
    List<Products> products=new ArrayList<>();
        for (Products product : listProd) {
            products.add(service.findById(product.getId()));
        }
        model.addAttribute("product",products);
        
        return "bucketShop";
    }
}
