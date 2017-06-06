/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reservation.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import reservation.entity.Reservation;
import static reservation.entity.Reservation.EtatReservation.ANNULE;
import static reservation.entity.Reservation.EtatReservation.A_PAYER;
import static reservation.entity.Reservation.EtatReservation.PAYE;
import reservation.entity.Utilisateur;
import reservation.service.ReservationClientServiceCrud;
import reservation.service.UtilisateurServiceCrud;

/**
 *
 * @author formation
 */
@Controller
@RequestMapping(value = "/reservationclient")
public class ReservationClientController {

    @Autowired
    private ReservationClientServiceCrud service;
    @Autowired
    private UtilisateurServiceCrud services;

    @RequestMapping(value = "/lister", method = RequestMethod.GET)
    public String lister(Model model, HttpSession session) {
        long utilId = (long) session.getAttribute("idutilisateur");
        Utilisateur utilisateur = services.findOne(utilId);
        long clientId = utilisateur.getClient().getId();

        model.addAttribute("reservationAPayer", service.listeParClientIdEtEtat(clientId, Reservation.EtatReservation.A_PAYER));
        model.addAttribute("reservationPayer", service.findAllByClientIdAndEtatReservation(clientId, Reservation.EtatReservation.PAYE));
        model.addAttribute("reservationAnnule", service.listeParClientIdEtEtat(clientId, Reservation.EtatReservation.ANNULE));
        
        return "/reservationclient/liste.jsp";
    }

    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
    public String detail(Model model, @PathVariable(value = "id") long id) {
        Reservation reservation = service.findOne(id);
        model.addAttribute("detail", reservation);

        return "/reservationclient/detail.jsp";
    }
}
