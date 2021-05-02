package blog.model;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "post_comments")
@Data
public class PostComment {

    // id комментария
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    // комментарий, на который оставлен этот комментарий (может
    // быть NULL, если комментарий оставлен просто к посту)
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "parent_id", referencedColumnName = "id")
    private PostComment parentComment;

    @OneToMany(mappedBy = "parentComment")
    private List<PostComment> childComments = new ArrayList<>();

    // пост, к которому написан комментарий
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "post_id", referencedColumnName = "id", nullable = false)
    private Post post;

    // автор комментария
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id", referencedColumnName = "id", nullable = false)
    private User user;

    // дата и время коментария
    @Column(name = "time", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date time;

    // текст коментария
    @Column(name = "text", columnDefinition = "TEXT", nullable = false)
    private String text;
}
