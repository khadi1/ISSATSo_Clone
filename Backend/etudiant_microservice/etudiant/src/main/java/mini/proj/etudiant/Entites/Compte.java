package mini.proj.etudiant.Entites;

import jakarta.persistence.*;

@Entity
@Table(name = "compte")
public class Compte {
    @Id
    @Column(name = "idCompte", nullable = false)
    private Integer id;

    @Column(name = "nomUtilisateur")
    private String nomUtilisateur;

    @Column(name = "motDePasse")
    private String motDePasse;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "personne_id")
    private Personne personne;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNomUtilisateur() {
        return nomUtilisateur;
    }

    public void setNomUtilisateur(String nomUtilisateur) {
        this.nomUtilisateur = nomUtilisateur;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }

    public Personne getPersonne() {
        return personne;
    }

    public void setPersonne(Personne personne) {
        this.personne = personne;
    }

}