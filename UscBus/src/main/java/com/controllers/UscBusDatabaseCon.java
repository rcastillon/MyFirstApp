/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.Properties;
import javax.servlet.http.HttpServletRequest;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author rcastillon
 */
@Controller
public class UscBusDatabaseCon {

    @RequestMapping(value = "/connection", method = RequestMethod.POST, produces = MediaType.TEXT_PLAIN_VALUE + ";charset=UTF-8")
    @ResponseBody
    public String getTest(HttpServletRequest request) throws IOException, ParseException {
        String out = "";
        try {
            // connect method #1 - embedded driver
            String dbURL1 = "jdbc:derby://localhost:1527/sample;create=true";
            Connection conn1 = DriverManager.getConnection(dbURL1);
            if (conn1 != null) {
                out += "<h1>Successfully connected to the database!!! Ang saya..<h1>";
                return out;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return out;
    }

}
