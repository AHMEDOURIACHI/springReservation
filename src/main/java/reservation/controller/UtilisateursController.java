/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reservation.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import reservation.DTO.UtilisateurDTO;

/**
 *
 * @author formation
 */
@Controller
public class UtilisateursController {
    
    @RequestMapping(value = "/deconnexion",method = RequestMethod.GET)
    public String Deconnexion(HttpSession session){
        
      //  session.invalidate();
       // session.invalidate(); Supprime touts attrib sessions
        session.removeAttribute("utilsateurConnecte");
        
        return "redirect:/identification";
        
        
        
    }
    
    @RequestMapping(value = "/identification", method = RequestMethod.POST)
    public String identificationPost(@ModelAttribute("utilDTO")UtilisateurDTO dto, HttpSession session ){
        
        
        if(!dto.getIdentifiant().equals("admin") || !dto.getMotpasse().equals("admin"))
            
            return "redirect:/identification";
            session.setAttribute("utilsateurConnecte", true);
            
            return "redirect:/hotel/lister";
        
    }
    
    @RequestMapping(value = "/identification",method = RequestMethod.GET)
    public String identificationget(Model model)
    {
        
        model.addAttribute("utilDTO", new UtilisateurDTO());
        
        return "/identification.jsp";
    }
    
}
