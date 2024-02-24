package mini.proj.etudiant.Entites;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "groupe")
public class Groupe {
    @Id
    @Column(name = "idGroupe", nullable = false)
    private Integer id;

    @Column(name = "nomGroupe")
    private String nomGroupe;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNomGroupe() {
        return nomGroupe;
    }

    public void setNomGroupe(String nomGroupe) {
        this.nomGroupe = nomGroupe;
    }

}