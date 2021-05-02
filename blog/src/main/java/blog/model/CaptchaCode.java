package blog.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "captcha_codes")
@Data
public class CaptchaCode {

    // id каптча
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    // дата и время генерации кода капчи
    @Column(name = "time", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date time;

    //отображаемый на картинкке капчи
    @Column(name = "code", columnDefinition = "TINYTEXT", nullable = false)
    private String code;

    //код, передаваемый в параметре
    @Column(name = "secret_code", columnDefinition = "TINYTEXT", nullable = false)
    private String secretCode;
}
