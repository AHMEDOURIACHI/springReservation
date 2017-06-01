/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import reservation.DTO.reservationDTO;

/**
 *
 * @author formation
 */
@Controller

@RequestMapping(value = "/reservation")
public class Reservationcontroller {
    @RequestMapping(value = "/ajouter", method = RequestMethod.GET)
    public String ajouterGET(Model model){
        
        model.addAttribute("dto", new reservationDTO());
//        model.addAttribute("chambres", new )
        
        return "/reservation/ajouter.jsp";
        
    }
    
}
