package blog.model;

import blog.enums.ModerationStatus;
import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "posts")
@Data
public class Post {

    // id поста
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    // скрыта или активна публикация: 0 или 1
    @Column(name = "is_active", columnDefinition = "TINYINT", nullable = false)
    private boolean isActive;

    // статус модерации, по умолчанию значение "NEW"
    @Enumerated(EnumType.STRING)
    @Column(name = "moderation_status",
            columnDefinition = "enum('NEW','ACCEPTED','DECLINED')",
            nullable = false)
    private ModerationStatus moderationStatus = ModerationStatus.NEW;

    // ID пользователя-модератора, принявшего решение, или NUL
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "moderator_id", referencedColumnName = "id")
    private User moderatorId;

    // автор поста
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id", referencedColumnName = "id", nullable = false)
    private User authorId;

    // дата и время публикации поста
    @Column(name = "date_time", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateTime;

    // заголовок поста
    @Column(name = "title", nullable = false)
    private String title;

    // текст поста
    @Column(name = "text", columnDefinition = "TEXT", nullable = false)
    private String text;

    // количество просмотров поста
    @Column(name = "view_count", nullable = false)
    private int viewCount;

    // Лайки/дизлайки на данном посте
    @OneToMany(mappedBy = "postId", cascade = CascadeType.ALL)
    private List<PostVote> postVotesList = new ArrayList<>();

    // Связь тэгов с постами
    @ManyToMany
    @JoinTable(name = "tag_to_post", joinColumns = @JoinColumn(name = "post_id"),
            inverseJoinColumns = @JoinColumn(name = "tag_id"))
    private List<Tag> tagList = new ArrayList<>();

    // комментарии к посту
    @OneToMany(mappedBy = "post", cascade = CascadeType.ALL)
    private List<PostComment> postComments = new ArrayList<>();
}
