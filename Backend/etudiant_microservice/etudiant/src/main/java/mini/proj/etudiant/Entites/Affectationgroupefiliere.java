package mini.proj.etudiant.Entites;

import jakarta.persistence.*;

@Entity
@Table(name = "affectationgroupefiliere")
public class Affectationgroupefiliere {
    @Id
    @Column(name = "idAffectation", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idGroupe")
    private Groupe idGroupe;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idFiliere")
    private Filiere idFiliere;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Groupe getIdGroupe() {
        return idGroupe;
    }

    public void setIdGroupe(Groupe idGroupe) {
        this.idGroupe = idGroupe;
    }

    public Filiere getIdFiliere() {
        return idFiliere;
    }

    public void setIdFiliere(Filiere idFiliere) {
        this.idFiliere = idFiliere;
    }

}