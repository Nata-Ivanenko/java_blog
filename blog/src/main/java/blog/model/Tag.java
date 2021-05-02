package blog.model;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "tags")
@Data
public class Tag {

    // id тэга
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    // текст тэга
    @Column(name = "name", nullable = false)
    private String text;

    // связанные с тегом посты
    @ManyToMany
    @JoinTable(name = "tag_to_post", joinColumns = @JoinColumn(name = "tag_id"),
            inverseJoinColumns = @JoinColumn(name = "post_id"))
    private List<Post> postList = new ArrayList<>();
}
