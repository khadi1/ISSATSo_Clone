package mini.proj.etudiant.Entites;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "filiere")
public class Filiere {
    @Id
    @Column(name = "idFiliere", nullable = false)
    private Integer id;

    @Column(name = "nomFiliere")
    private String nomFiliere;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNomFiliere() {
        return nomFiliere;
    }

    public void setNomFiliere(String nomFiliere) {
        this.nomFiliere = nomFiliere;
    }

}