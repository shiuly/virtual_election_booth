package com.exam.controller;

import com.exam.Admin;
import com.exam.Candidate;
import com.exam.Dao.CandidateDao;
import com.exam.Dao.ResultDao;
import com.exam.Dao.VoterDao;
import com.exam.NewHibernateUtil;
import com.exam.Result;
import com.exam.Voter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class VoterController {

    CandidateDao cd = new CandidateDao();
    VoterDao sd = new VoterDao();
    ResultDao rd = new ResultDao();
    List<Voter> voterlist = new ArrayList<>();
    Result res = new Result();
    String userName = "";
    String userLocation = "";
    int userNid = 0;

    @RequestMapping("showV.htm")
    public String doShow(@ModelAttribute("voter") Voter vr, Model m) {
        VoterDao sd = new VoterDao();
        List<Voter> list = sd.showAll();
        m.addAttribute("list", list);

        return "voterShow";

    }

    @RequestMapping("saveD.htm")
    public String doSave(@ModelAttribute("voter") Voter vr, Model m) {
        VoterDao sd = new VoterDao();
        sd.doSave(vr);
        m.addAttribute("msg", "Your Registration is Completed");
        return "VoterLogin";
    }

    @RequestMapping("/fileUpload.htm")
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
        return "voter";
    }

    @RequestMapping("deleteV.htm")
    public String doDelete(@ModelAttribute("voter") Voter vr, Model m) {
        VoterDao ld = new VoterDao();
        ld.doDelete(vr);
        List<Voter> list = ld.showAll();
        m.addAttribute("list", list);
        m.addAttribute("msg", "Selected data is deleted");
        return "voterShow";
    }

    @RequestMapping("upP.htm")
    public String doUpP(@ModelAttribute("voter") Voter vr, Model m) {
        return "voterUpdate";
    }

    @RequestMapping("update.htm")
    public String doUpdate(@ModelAttribute("voter") Voter vr, Model m) {
        VoterDao ld = new VoterDao();
        ld.doUpdate(vr);
        List<Voter> list = ld.showAll();
        m.addAttribute("list", list);
        m.addAttribute("msg", "Selected data is Updated");
        return "voterShow";
    }

    @RequestMapping("search.htm")

    public String doSearch(@ModelAttribute("voter") Voter vr, Model m) {
        VoterDao ld = new VoterDao();

        List<Voter> list = ld.doSearch(vr);
        m.addAttribute("list", list);
        return "voterSearch";

    }

    @RequestMapping("/checkVoter")
    public String chekuser(@ModelAttribute("voter") Voter u, Model m) {
        if (sd.checker(u.getFullname(), u.getNid()) != null) {
            voterlist = sd.checker(u.getFullname(), u.getNid());
            m.addAttribute("userName", voterlist.get(0).getFullname());
            m.addAttribute("userNid", voterlist.get(0).getNid());
            m.addAttribute("userLocation", voterlist.get(0).getLocation());

            return "welcomeVoter";
        } else {
            m.addAttribute("msg", "Voter information not found!!");
        }
        return "VoterLogin";
    }

    @RequestMapping("/logOut.htm")
    public String logOutVoter(Model m) {
        return "VoterLogin";
    }

    @RequestMapping("/giveVote.htm")
    public String sendVotingPage(@RequestParam("location") String userLocation, @ModelAttribute("voter") Voter V, Model m) {
        List<Result> listResult = new ArrayList<>();
        int nid = voterlist.get(0).getNid();
        listResult = rd.isVoted(nid);
        System.out.println("result =====" + listResult);

        if (listResult.size() > 0) {
            m.addAttribute("msg", "Sorry !You already voted");
            return "VoterLogin";

        } else {
            List<Candidate> listCandidate = new ArrayList<>();
            listCandidate = cd.validCandiodate(userLocation);
            m.addAttribute("validCan", listCandidate);
            System.out.println("valid .................................");
            return "votingPage";
        }

    }

    @RequestMapping("/myVote")
    public String finalVote(@RequestParam("party") String party, @RequestParam("location") String location, Model m) {
        List<Candidate> listCandidate = new ArrayList<>();
        String par = party;
        String loc = voterlist.get(0).getLocation();
        int nid = voterlist.get(0).getNid();
        res.setLocation(loc);
        res.setNid(nid);
        res.setParty(par);
        rd.doSave(res);
        m.addAttribute("userName", voterlist.get(0).getFullname());
        m.addAttribute("userNid", voterlist.get(0).getNid());
        m.addAttribute("userLocation", voterlist.get(0).getLocation());
        return "welcomeVoter";
    }

    @RequestMapping("/VoterOut.htm")
    public String logOutVoterA(Model m) {
        m.addAttribute("msg", "Congratulation!! you give vote successfully.");

        return "index";
    }

}
