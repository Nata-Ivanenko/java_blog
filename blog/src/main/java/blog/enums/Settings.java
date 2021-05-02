package blog.enums;

public class Settings {

    public enum SettingCode {
        MULTIUSER_MODE,
        POST_PREMODERATION,
        STATISTICS_IS_PUBLIC
    }

    public enum SettingValue {YES, NO}

    public static String getName(SettingCode settingCode) {
        switch (settingCode) {
            case MULTIUSER_MODE: {
                return "Многопользовательский режим";
            }
            case POST_PREMODERATION: {
                return "Премодерация постов";
            }
            case STATISTICS_IS_PUBLIC: {
                return "Показывать всем статистику блога";
            }
        }
        return null;
    }
}
