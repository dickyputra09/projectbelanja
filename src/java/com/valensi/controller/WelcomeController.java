/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/welcome")
public class WelcomeController {
    
    @RequestMapping()
    public String welcome(Model model){
    model.addAttribute("msg","Welcome");
    return "welcome";
    }
    @RequestMapping("/login")
    public String login(Model model){ 
    model.addAttribute("log","Hallo");
            return"Login";
            }
    
}
