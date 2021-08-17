package blog.model;

import blog.enums.Settings;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "global_settings")
@Getter
@Setter
@ToString
public class GlobalSettings {

    //id настройки
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    //системное имя настройки
    @Column(name = "code", nullable = false)
    @Enumerated(EnumType.STRING)
    private Settings.SettingCode code;

    //название настройки
    @Column(name = "name", nullable = false)
    private String name;

    //значение настройки
    @Enumerated(EnumType.STRING)
    @Column(name = "value", nullable = false)
    private Settings.SettingValue value;

    public GlobalSettings(int id, Settings.SettingCode code,
                          Settings.SettingValue value) {
        this.id = id;
        this.code = code;
        this.name = Settings.getName(code);
        this.value = value;
    }
}
