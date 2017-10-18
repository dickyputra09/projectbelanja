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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/product")
public class ProductsControl {
    @Autowired
    ProductService ps;
    
////    @RequestMapping()
////    public String product(Model model){
////        model.addAttribute("pro","")
////    return "product";
//    }
    List<Products> keranjang = new ArrayList<>();
    
    @RequestMapping("/all")
    public String showAllProduct(HttpSession session){
    List<Products> product=ps.findAll();
    session.setAttribute("product",product);
    session.setAttribute("bucket",keranjang);
    return "product";
    }
    
    @RequestMapping ("/{id}")
    public String showDetailProduct(@PathVariable Integer id,HttpSession session){
    Products product= ps.findById(id);
    session.setAttribute("prod",product);
    return "productDetails";
    }
    
    @RequestMapping("/addCarts")
    public String addToCarts(HttpSession session){
    List<Products> barang= (List<Products>) session.getAttribute("bucket");
    barang.add((Products) session.getAttribute("prod"));
    session.removeAttribute("prod");
    return "bucket";
    }
    
}
