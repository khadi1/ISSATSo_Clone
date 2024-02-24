package mini.proj.etudiant.Entites;

import jakarta.persistence.*;

@Entity
@Table(name = "cours")
public class Cour {
    @Id
    @Column(name = "idCours", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idFiliere")
    private Filiere idFiliere;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idMatiere")
    private Matiere idMatiere;

    @Column(name = "semestre")
    private String semestre;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Filiere getIdFiliere() {
        return idFiliere;
    }

    public void setIdFiliere(Filiere idFiliere) {
        this.idFiliere = idFiliere;
    }

    public Matiere getIdMatiere() {
        return idMatiere;
    }

    public void setIdMatiere(Matiere idMatiere) {
        this.idMatiere = idMatiere;
    }

    public String getSemestre() {
        return semestre;
    }

    public void setSemestre(String semestre) {
        this.semestre = semestre;
    }

}