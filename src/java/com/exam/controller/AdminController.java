 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.controller;

import com.exam.Admin;
import com.exam.Dao.AdminDao;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author shiuly
 */
@Controller
public class AdminController {
     List<Admin> userlist = new ArrayList<>();

    @RequestMapping("insertAdmin.htm")
    public String doSave(@ModelAttribute("admin") Admin ad, Model m) {
        AdminDao ld = new AdminDao();
        ld.doSave(ad);

        return "adminlogin";
    }

    @RequestMapping("check.htm")
    public String doShow(@ModelAttribute("admin") Admin ad, Model m) {
        AdminDao ld = new AdminDao();

        List<Admin> list = ld.showAll();
        m.addAttribute("list", list);
      
        if (ld.checker(ad.getAdminname(), ad.getPassword()) !=null ) {
            userlist =ld.checker(ad.getAdminname(), ad.getPassword());
            m.addAttribute("adminname",userlist.get(0).getAdminname());
            
            return "adminpage";
        } else {
            return "adminlogin";
        }
    }
    
    @RequestMapping("backHome.htm")
    public String backUp(){
        return "index";
    }
    
}
