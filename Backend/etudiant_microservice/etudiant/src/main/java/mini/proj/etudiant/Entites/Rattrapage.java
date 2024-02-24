package mini.proj.etudiant.Entites;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.LocalDate;

@Entity
@Table(name = "rattrapage")
public class Rattrapage {
    @Id
    @Column(name = "idRattrapage", nullable = false)
    private Integer id;

    @Column(name = "date")
    private LocalDate date;

    @Column(name = "idCours")
    private Integer idCours;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public Integer getIdCours() {
        return idCours;
    }

    public void setIdCours(Integer idCours) {
        this.idCours = idCours;
    }

}