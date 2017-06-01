/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import reservation.DTO.reservationDTO;
import reservation.entity.Reservation;
import reservation.service.ReservationServiceCRUD;

/**
 *
 * @author formation
 */
@Controller

@RequestMapping(value = "/reservation")
public class Reservationcontroller {
    
    reservationDTO serviceDTO;
    
    ReservationServiceCRUD serviceRESA;
    
    
    
    @RequestMapping(value = "/ajouter", method = RequestMethod.GET)
    public String ajouterGET(Model model){
        
        model.addAttribute("dto", new reservationDTO());
        
        
        return "/reservation/ajouter.jsp";
        
    }
    @RequestMapping(value = "/ajouter",method = RequestMethod.POST)
    public String ajouterPOST(@ModelAttribute(value = "dto")reservationDTO Mondto){
        
        Reservation reserva = new Reservation();
        
        for(int i=0;i<serviceDTO.getChambresID().size();i++){
            
            
        }
        
        
        return"redirect:/reservation/lister";
    }
    
}
