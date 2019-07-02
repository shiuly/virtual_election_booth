package com.exam.controller;

import com.exam.Candidate;
import com.exam.Dao.CandidateDao;
import com.exam.Dao.ResultDao;
import com.exam.Dao.VoterDao;
import com.exam.Result;
import com.exam.Voter;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ResultController {

    ResultDao rd = new ResultDao();
    List<Result> list = new ArrayList<>();

    @RequestMapping("showR.htm")
    public String doShow(@ModelAttribute("result") Result r, Model m) {

        List<Result> listAllBnp = new ArrayList<>();
               listAllBnp = rd.showResultBnp();
        List<Result> listAllAwami = rd.showResultAwami();
        List<Result> listAllJp = rd.showResultJp();
        List<Result> allresult = rd.showAllResult();

        double bnpSize = listAllBnp.size();
        double awamiSize = listAllAwami.size();
        double jpSize = listAllJp.size();
        
        double resSize = allresult.size();
        
        double bndPercent =  Math.round((bnpSize / resSize)*100);
        double awamiPercent = Math.round((awamiSize / resSize)*100);
        double jpPercent = Math.round((jpSize / resSize)*100);
      
     

      //  System.out.println("BNP " + bndPercent + " AWAMI " + awamiPercent + " JP " + jpPercent);
        m.addAttribute("bndPercent", bndPercent);
        m.addAttribute("awamiPercent", awamiPercent);
        m.addAttribute("jpPercent", jpPercent);

        m.addAttribute("bnpGot", listAllBnp.size());
        m.addAttribute("awamiGot", listAllAwami.size());
        m.addAttribute("jpGot", listAllJp.size());
        System.out.println("-----------"+listAllBnp.size());
        m.addAttribute("listAllBnp", listAllBnp);
        m.addAttribute("listAllAwami", listAllAwami);
        m.addAttribute("listAllJp", listAllJp);

        return "showResult";

    }

    @RequestMapping("/ResultOut.htm")
    public String logOutResult(Model m) {

        return "adminpage";
    }

    @RequestMapping("/just.htm")
    public String countVote(@ModelAttribute("result") Result r, Model m) {

        String party = list.get(0).getParty();
        list = rd.countResult(party);
        System.out.println("jjjnjknf" + list);
        return "test";

    }

}
