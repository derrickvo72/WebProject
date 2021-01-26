package models;

import beans.course;
import beans.take;
import org.sql2o.Connection;
import utils.dbUtils;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

public class takeModel {
    public static void takes(int user_id, int course_id) {
        final String sql = "INSERT INTO takes (user_id, course_id) " +
                "VALUES (:user_id,:course_id)\n";
        try (Connection con = dbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("course_id",course_id)
                    .addParameter("user_id",user_id)
                    .throwOnMappingFailure(false)
                    .executeUpdate();
        }

    }
    public static Optional<take> gettake(int userid, int courseid){
        final String sql = "select * from takes where user_id = :user_id and course_id = :course_id";
        try (Connection con = dbUtils.getConnection()) {
            List<take> listtake = con.createQuery(sql)
                    .addParameter("course_id", courseid)
                    .addParameter("user_id", userid)
                    .throwOnMappingFailure(false)
                    .executeAndFetch(take.class);
            if (listtake.size() == 0) {
                return Optional.empty();
            }
            return Optional.ofNullable(listtake.get(0));
        }
    }
    public static void rating(int userid, int courseid, int rating, String comment, LocalDateTime ratingdate){
        final String sql = "UPDATE takes \n" +
                "SET  rating = :rating,  comment = :comment, ratingdate = :ratingdate\n" +
                "WHERE user_id = :userId  AND course_id = :courseId \n";
        try(Connection con = dbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("userId",userid)
                    .addParameter("courseId",courseid)
                    .addParameter("rating",rating)
                    .addParameter("comment",comment)
                    .addParameter("ratingdate",ratingdate)
                    .executeUpdate();
        }
    }
}
