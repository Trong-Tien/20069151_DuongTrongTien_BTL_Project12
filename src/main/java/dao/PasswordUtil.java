package dao;

import org.mindrot.jbcrypt.BCrypt;

public class PasswordUtil {

    // Phương thức để băm mật khẩu
    public static String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    // Phương thức để kiểm tra mật khẩu
    public static boolean checkPassword(String password, String hashedPassword) {
        return BCrypt.checkpw(password, hashedPassword);
    }
}
