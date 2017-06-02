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
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import reservation.DTO.reservationDTO;
import reservation.entity.Chambre;
import reservation.entity.Client;
import reservation.entity.Reservation;
import reservation.service.ChambreServiceCRUD;
import reservation.service.ClientServiceCRUD;
import reservation.service.ReservationServiceCRUD;

/**
 *
 * @author formation
 */
@Controller

@RequestMapping(value = "/reservation")
public class Reservationcontroller {

    @Autowired
    ReservationServiceCRUD rsc;
    @Autowired
    ChambreServiceCRUD chs;
    @Autowired
    ClientServiceCRUD ServiceClient;

    @RequestMapping(value = "/ajouter", method = RequestMethod.GET)
    public String ajouterGET(Model model) {

        List<Chambre> listech = (List<Chambre>) chs.findAll();
        List<Client> listeCl = (List<Client>) ServiceClient.findAll();

        model.addAttribute("dto", new reservationDTO());
        model.addAttribute("liste", listech);
        model.addAttribute("clients", listeCl);

        return "/reservation/ajouter.jsp";

    }

    @RequestMapping(value = "/ajouter", method = RequestMethod.POST)
    @Transactional
    public String ajouterPOST(@ModelAttribute(value = "dto") reservationDTO Mondto) {

        Reservation reserva = new Reservation();

        reserva.setClient(Mondto.getClient());
        reserva.setDateReseravation(Mondto.getDateReseravation());

        // Sauve réservation
        rsc.save(reserva);
        
        // Sauve réservations
        for (Long id : Mondto.getChambresID()) {

            Chambre c = chs.findOne(id);
            
            c.getReservations().add(reserva);// Set ds 1 sens
            reserva.getChambres().add(c);
            chs.save(c);
        }
        
        //chs.save(chambres);
       
        return "redirect:/reservation/lister";
    }

    @RequestMapping(value = "/lister", method = RequestMethod.GET)
    public String lister(Model model) {
        List<Reservation> reserv = (List<Reservation>) rsc.findAll();
        List<Chambre> chambre = (List<Chambre>) chs.findAll();

        model.addAttribute("reservation", reserv);
        return "/reservation/lister.jsp";
    }

}
