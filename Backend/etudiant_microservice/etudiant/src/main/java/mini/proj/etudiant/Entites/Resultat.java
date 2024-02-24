package mini.proj.etudiant.Entites;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "resultat")
public class Resultat {
    @Id
    @Column(name = "idResultat", nullable = false)
    private Integer id;

    @Column(name = "idEtudiant")
    private String idEtudiant;

    @Column(name = "moyenne")
    private Float moyenne;

    @Column(name = "mention")
    private String mention;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIdEtudiant() {
        return idEtudiant;
    }

    public void setIdEtudiant(String idEtudiant) {
        this.idEtudiant = idEtudiant;
    }

    public Float getMoyenne() {
        return moyenne;
    }

    public void setMoyenne(Float moyenne) {
        this.moyenne = moyenne;
    }

    public String getMention() {
        return mention;
    }

    public void setMention(String mention) {
        this.mention = mention;
    }

}