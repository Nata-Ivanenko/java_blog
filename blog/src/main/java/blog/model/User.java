package blog.model;


import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "users")
@Data
public class User {

    // id пользователя
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @OneToMany(mappedBy = "authorId", cascade = CascadeType.ALL)
    private List<Post> postList = new ArrayList<>();

    // является ли пользователь модератором (может ли править
    //глобальные настройки сайта и модерировать посты)
    @Column(name = "is_moderator", columnDefinition = "TINYINT", nullable = false)
    private boolean isModerator;

    @OneToMany(mappedBy = "moderatorId", fetch = FetchType.LAZY)
    private List<Post> moderatedPosts = new ArrayList<>();

    // дата и время регистрации пользователя
    @Column(name = "reg_time", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date regTime;

    // имя пользователя
    @Column(name = "name", nullable = false)
    private String name;

    // email пользователя
    @Column(name = "email", nullable = false)
    private String email;

    // хэш пароля пользователя
    @Column(name = "password", nullable = false)
    private String password;

    // код для восстановления пароля, может быть NULL
    @Column(name = "code")
    private String code;

    // фотография (ссылка на файл), может быть NULL
    @Column(name = "photo",  columnDefinition = "TEXT")
    private String photo;

    // Лайки/дизлайки, которые поставил пользователь
    @OneToMany(mappedBy = "userId", cascade = CascadeType.ALL)
    private List<PostVotes> postVotesList = new ArrayList<>();

    // автор комментариев
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<PostComment> comments = new ArrayList<>();
}
