/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.controller;

import com.exam.Admin;
import com.exam.Candidate;
import com.exam.Dao.AdminDao;
import com.exam.Dao.CandidateDao;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author shiuly
 */
@Controller
public class CandidateController {

    @RequestMapping("/fileUploadAir.htm")
    public String upload(Model model, @RequestParam("imageFile") MultipartFile[] files) {
        String uploadDir = "E:\\AOnilineVoting\\web\\img";
//---------------------------------------------------
        StringBuilder fileNames = new StringBuilder();
        Path fileNameAndPath = null;
        try {
            for (MultipartFile file : files) {
                fileNameAndPath = Paths.get(uploadDir, file.getOriginalFilename());
                fileNames.append(file.getOriginalFilename());
                Files.write(fileNameAndPath, file.getBytes());
            }
        } catch (IOException e) {
            model.addAttribute("msg", "YOU HAVENT CHOOSE ANY IMAGES");
        }

        System.out.println("File name path -------------" + fileNames);
        model.addAttribute("img", fileNames);
        return "candidateAdd";
    }

    @RequestMapping("saveData.htm")
    public String doSave(@ModelAttribute("candidate") Candidate cn, Model m) {
        CandidateDao ld = new CandidateDao();
        ld.doSave(cn);

        return "candidateShow";
    }
    

    @RequestMapping("showData.htm")
    public String doShow(@ModelAttribute("candidate") Candidate cn, Model m) {
        CandidateDao sd = new CandidateDao();
        List<Candidate> list = sd.showAll();
        m.addAttribute("list", list);

        return "candidateShow";

        
        
    }
      @RequestMapping("/deleteImage.htm")
    public String deleteData(@ModelAttribute("candidate") Candidate img, Model m) {
           CandidateDao sd = new CandidateDao();
          sd.doDelete(img);
        List<Candidate> imageList = sd.showAll();
        m.addAttribute("imageList", imageList);
        m.addAttribute("msg", "IMAGE DELETED");
        return "candidateShow";
    }
    
    
    
}
