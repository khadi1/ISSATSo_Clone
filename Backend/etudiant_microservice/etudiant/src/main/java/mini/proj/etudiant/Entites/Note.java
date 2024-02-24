package mini.proj.etudiant.Entites;

import jakarta.persistence.*;

@Entity
@Table(name = "notes")
public class Note {
    @Id
    @Column(name = "idCours", nullable = false)
    private Integer id;

    @MapsId
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "idCours", nullable = false)
    private Cour cours;

    @Column(name = "note_document_path")
    private String noteDocumentPath;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Cour getCours() {
        return cours;
    }

    public void setCours(Cour cours) {
        this.cours = cours;
    }

    public String getNoteDocumentPath() {
        return noteDocumentPath;
    }

    public void setNoteDocumentPath(String noteDocumentPath) {
        this.noteDocumentPath = noteDocumentPath;
    }

}