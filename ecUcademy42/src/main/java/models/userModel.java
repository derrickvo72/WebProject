package models;

import beans.course;
import beans.user;
import org.sql2o.Connection;
import utils.dbUtils;

import java.util.List;

public class userModel {
    public static List<user> getUserByIdAndUsername(){
        String sql = "select * from user where user_id=:user_id and user_name=:user_name";
        try(Connection con = dbUtils.getConnection()){
            return con.createQuery(sql).executeAndFetch(user.class);
        }
    }
}
