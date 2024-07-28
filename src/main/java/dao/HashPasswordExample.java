package dao;

import org.mindrot.jbcrypt.BCrypt;

public class HashPasswordExample {
    public static void main(String[] args) {
        String plainPassword1 = "password123";
        String plainPassword2 = "mysecret";

        String hashedPassword1 = BCrypt.hashpw(plainPassword1, BCrypt.gensalt());
        String hashedPassword2 = BCrypt.hashpw(plainPassword2, BCrypt.gensalt());

        System.out.println("Hashed Password 1: " + hashedPassword1);
        System.out.println("Hashed Password 2: " + hashedPassword2);
    }
}
