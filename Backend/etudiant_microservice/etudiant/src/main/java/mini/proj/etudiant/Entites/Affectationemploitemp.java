package mini.proj.etudiant.Entites;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name = "affectationemploitemps")
public class Affectationemploitemp {
    @Id
    @Column(name = "idAffectation", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idGroupeFiliere")
    private Affectationgroupefiliere idGroupeFiliere;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idAffectationCoursEnseignant")
    private Affectationcoursenseignant idAffectationCoursEnseignant;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idSalle")
    private Salle idSalle;

    @Column(name = "jour")
    private LocalDate jour;

    @Column(name = "seance")
    private String seance;

    @Column(name = "regime")
    private String regime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Affectationgroupefiliere getIdGroupeFiliere() {
        return idGroupeFiliere;
    }

    public void setIdGroupeFiliere(Affectationgroupefiliere idGroupeFiliere) {
        this.idGroupeFiliere = idGroupeFiliere;
    }

    public Affectationcoursenseignant getIdAffectationCoursEnseignant() {
        return idAffectationCoursEnseignant;
    }

    public void setIdAffectationCoursEnseignant(Affectationcoursenseignant idAffectationCoursEnseignant) {
        this.idAffectationCoursEnseignant = idAffectationCoursEnseignant;
    }

    public Salle getIdSalle() {
        return idSalle;
    }

    public void setIdSalle(Salle idSalle) {
        this.idSalle = idSalle;
    }

    public LocalDate getJour() {
        return jour;
    }

    public void setJour(LocalDate jour) {
        this.jour = jour;
    }

    public String getSeance() {
        return seance;
    }

    public void setSeance(String seance) {
        this.seance = seance;
    }

    public String getRegime() {
        return regime;
    }

    public void setRegime(String regime) {
        this.regime = regime;
    }

}