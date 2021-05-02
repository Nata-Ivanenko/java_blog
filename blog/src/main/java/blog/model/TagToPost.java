package blog.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "tag_to_post")
@Data
public class TagToPost {

    // id связи
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
}
