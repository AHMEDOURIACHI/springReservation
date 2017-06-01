/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reservation.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import reservation.entity.Client;
import reservation.service.ClientServiceCRUD;

/**
 *
 * @author Ahmed
 */
@Controller
@RequestMapping(value = "/client")
public class clientController {
    @Autowired
    ClientServiceCRUD service;
    @RequestMapping(value = "/lister",method =RequestMethod.GET )
    public String lister(Model model){
        List<Client>  listeClient = new ArrayList<>();
        
        listeClient= (List<Client>) service.findAll();
        model.addAttribute("clients", listeClient);
        return"/client/lister.jsp";
    }
    
}
