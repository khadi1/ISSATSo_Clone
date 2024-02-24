package mini.proj.etudiant.Entites;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "salle")
public class Salle {
    @Id
    @Column(name = "idSalle", nullable = false)
    private Integer id;

    @Column(name = "nomSalle")
    private String nomSalle;

    @Column(name = "type")
    private String type;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNomSalle() {
        return nomSalle;
    }

    public void setNomSalle(String nomSalle) {
        this.nomSalle = nomSalle;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}