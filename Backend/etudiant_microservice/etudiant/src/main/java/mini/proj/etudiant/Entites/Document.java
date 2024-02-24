package mini.proj.etudiant.Entites;

import jakarta.persistence.*;

import java.time.Instant;

@Entity
@Table(name = "document")
public class Document {
    @Id
    @Column(name = "idDocument", nullable = false)
    private Integer id;

    @Column(name = "titre")
    private String titre;

    @Lob
    @Column(name = "contenu")
    private String contenu;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idCours")
    private Cour idCours;

    @Column(name = "path")
    private String path;

    @Column(name = "date_de_creation")
    private Instant dateDeCreation;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getContenu() {
        return contenu;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public Cour getIdCours() {
        return idCours;
    }

    public void setIdCours(Cour idCours) {
        this.idCours = idCours;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Instant getDateDeCreation() {
        return dateDeCreation;
    }

    public void setDateDeCreation(Instant dateDeCreation) {
        this.dateDeCreation = dateDeCreation;
    }

}