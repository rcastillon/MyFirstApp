/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author rcastillon
 */
@Controller
public class HomeControllers {

    @RequestMapping("/myHome")
    public String login(HttpServletRequest request, HttpServletResponse res, ModelMap model,
            HttpServletResponse response) throws ClassNotFoundException, IOException  {
        String userName = request.getParameter("inputEmail");
        String password = request.getParameter("inputpas");
        Connection conn = null;
        String use = "";
        String msg = "";
        String connectionURL = "jdbc:derby://localhost:1527/UscBusTracker";
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            conn = DriverManager.getConnection(connectionURL, "rcastillon", "admin");
//            String sql = "select * from USCBUSUSERS where USERNAME=? and PASSWORD=?";
            String sql = "SELECT * FROM USCBUSUSERS WHERE USERNAME LIKE '%" + userName + "%' and PASSWORD LIKE '%" + password + "%'";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                use = rs.getString("FULLNAME");
                msg = "Welcome" + " " + use + "!";
                model.addAttribute("welcome", msg);
            }else{
                model.addAttribute("error","Invalid credentials!!!");
                 return "index";  
            }
        } catch (SQLException ex) {
            msg = ex.getMessage();
            model.addAttribute("dataerror",msg);
            return "index";      
        }
        return "home";
    }
    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String viewIndex() {
        return "index";
  }

    @RequestMapping(value = "/")
    public String viewsIndex() {
        return "index";
    }
}
