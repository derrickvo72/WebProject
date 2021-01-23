package models;

import beans.course;
import beans.user;
import org.sql2o.Connection;
import utils.dbUtils;

import java.util.List;
import java.util.Optional;

public class userModel {
    public static Optional<user> findByUsername(String user_username) {
        final String sql = "select * from user where user_username = :user_username";
        try (Connection con = dbUtils.getConnection()) {
            List<user> list = con.createQuery(sql)
                    .addParameter("user_username", user_username)
                    .executeAndFetch(user.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }

    public static void add(user u) {
        final String sql = "INSERT INTO user (user_username, user_password, user_email, role_id) VALUES (:userUsername,:userPassword,:userEmail,:roleId)\n";
        try (Connection con = dbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("userUsername", u.getUser_username())
                    .addParameter("userPassword", u.getUser_password())
                    .addParameter("userEmail", u.getUser_email())
                    .addParameter("roleId", u.getRole_id())
                    .executeUpdate();
        }
    }
}
