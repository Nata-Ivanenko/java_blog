package blog.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "post_votes")
@Data
public class PostVotes {

    // id лайка/дизлайка
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    // тот, кто поставил лайк/дизлайк
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id", referencedColumnName = "id", nullable = false)
    private User userId;

    // пост, которому поставлен лайк/дизлайк
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "post_id", referencedColumnName = "id", nullable = false)
    private Post postId;

    // дата и время лайка/дизлайка
    @Column(name = "time", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date time;

    // лайк или дизлайк: 1 или -1
    @Column(name = "value", columnDefinition = "TINYINT", nullable = false)
    private byte value;
}
