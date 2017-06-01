/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reservation.controller;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import reservation.entity.Chambre;
import reservation.entity.Hotel;
import reservation.service.ChambreServiceCRUD;
import reservation.service.HotelServiceCRUD;

/**
 *
 * @author formation
 */
@Controller
@RequestMapping(value = "/chambre")
public class Chambrecontroller {
    
    @Autowired
    ChambreServiceCRUD  service ;
    
    @Autowired
    HotelServiceCRUD  serviceHotel;
    
    @RequestMapping(value ="/lister")
    public String listerChalmbrer(Model model){
   
        
          List<Chambre> chambres = (List<Chambre>) service.findAll();
          model.addAttribute("listeChambres", chambres);
        
         return"/chambre/lister.jsp";
    }
    @RequestMapping(value = "/ajouter")
    public String ajouterGet(Model model){
        
        
        model.addAttribute("chambre", new Chambre());
        model.addAttribute("hotels",serviceHotel.findAll());
        
        return "/chambre/ajouter.jsp";
        
        
      
    }
    
    @RequestMapping(value = "/ajouter",method = RequestMethod.POST)
    public String ajouterGET(@ModelAttribute(value = "chambre")Chambre MaNouvellechambre ){
        
        service.save(MaNouvellechambre);
        
        
        
        return "redirect:/chambre/lister";
        
     
    }
}
