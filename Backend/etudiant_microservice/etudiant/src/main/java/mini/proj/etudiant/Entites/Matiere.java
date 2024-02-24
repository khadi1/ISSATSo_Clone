package mini.proj.etudiant.Entites;

import jakarta.persistence.*;

@Entity
@Table(name = "matiere")
public class Matiere {
    @Id
    @Column(name = "idMatiere", nullable = false)
    private Integer id;

    @Column(name = "nomMatiere")
    private String nomMatiere;

    @Lob
    @Column(name = "description")
    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNomMatiere() {
        return nomMatiere;
    }

    public void setNomMatiere(String nomMatiere) {
        this.nomMatiere = nomMatiere;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}