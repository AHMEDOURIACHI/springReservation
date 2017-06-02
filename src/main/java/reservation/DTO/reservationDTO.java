/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reservation.DTO;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import reservation.entity.Chambre;
import reservation.entity.Client;
import reservation.entity.Reservation;

/**
 *
 * @author formation
 */
public class reservationDTO {
    
     public enum EtatReservation{
        
        A_PAYER,
        PAYE,
        ANNULE
    }
        public Long id;
        private Date dateReseravation;
       private Client client;
        private List<Long> chambresID = new ArrayList<>();
       @Enumerated(EnumType.STRING)
        private Reservation.EtatReservation etatReservation;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDateReseravation() {
        return dateReseravation;
    }

    public void setDateReseravation(Date dateReseravation) {
        this.dateReseravation = dateReseravation;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }
    

    public List<Long> getChambresID() {
        return chambresID;
    }

    public void setChambresID(List<Long> chambresID) {
        this.chambresID = chambresID;
    }

    public Reservation.EtatReservation getEtatReservation() {
        return etatReservation;
    }

    public void setEtatReservation(Reservation.EtatReservation etatReservation) {
        this.etatReservation = etatReservation;
    }
    
    
}
