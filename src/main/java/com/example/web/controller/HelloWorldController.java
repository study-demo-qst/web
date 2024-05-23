package com.example.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.common.model.User;
import com.example.logic.service.UserService;

@RestController
public class HelloWorldController {

    @Autowired
    private UserService userService;

    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }

    @GetMapping("/search")
    public String search() {
        return "search";
    }

    // @PostMapping("/search")
    // public String searchUser(@RequestParam("username") String username, Model model) {
    //     User user = userService.findUserByUsername(username).get();
    //     model.addAttribute("user", user);
    //     return "result";
    // }
}