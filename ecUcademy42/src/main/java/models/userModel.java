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
    public static Optional<user> findByEmail(String email) {
        final String sql = "select * from user where user_email = :email";
        try (Connection con = dbUtils.getConnection()) {
            List<user> list = con.createQuery(sql)
                    .addParameter("email", email)
                    .executeAndFetch(user.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }
    public static Optional<user> findByID(int user_id) {
        final String sql = "select * from user where user_id = :user_id";
        try (Connection con = dbUtils.getConnection()) {
            List<user> list = con.createQuery(sql)
                    .addParameter("user_id", user_id)
                    .executeAndFetch(user.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }
    public static List<user> findUserByID(int userId) {
        final String sql = "select * from user where user_id = :userId";
        try (Connection con = dbUtils.getConnection()){
            return con.createQuery(sql)
                    .addParameter("userId", userId)
                    .executeAndFetch(user.class);
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
    public static void updaterole(int user_id,int role_id){
        final String sql = "UPDATE user SET  role_id = :role_id WHERE user_id = :user_id";
        try (Connection con = dbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("user_id", user_id)
                    .addParameter("role_id", role_id)
                    .executeUpdate();
        }
    }
    public static void update(user u) {
        final String sql = "UPDATE user SET  user_fullname = :userFullname, user_bday = :userBday, user_gender = :userGender, " +
                "user_phone = :userPhone, user_email = :userEmail, user_address = :userAddress, img = :img WHERE user_id = :userId \n";
        try (Connection con = dbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("userId", u.getUser_id())
                    .addParameter("userFullname", u.getUser_fullname())
                    .addParameter("userBday", u.getUser_bday())
                    .addParameter("userGender", u.getUser_gender())
                    .addParameter("userPhone", u.getUser_phone())
                    .addParameter("userEmail", u.getUser_email())
                    .addParameter("userAddress", u.getUser_address())
                    .addParameter("img", u.getImg())
                    .executeUpdate();
        }
    }
    public static List<course> getListCourseByUserId(int userId) {
        final String sql = "select course.course_id, course.course_name, course.course_fullinfo, course.course_lessinfo, course.course_rate, course.course_lession, course.img,\n" +
                "course.created_at, course.updated_at, course.course_link, course.course_price\n" +
                "from course, takes\n" +
                "where takes.user_id = :userId and takes.course_id = course.course_id";
        try (Connection con = dbUtils.getConnection()){
            return con.createQuery(sql)
                    .addParameter("userId", userId)
                    .executeAndFetch(course.class);
        }
    }
    public static List<course> getListCourseByTeacherId(int teacherID) {
        final String sql = "SELECT * FROM courseonline.course\n" +
                "where teacher=:teacherID";
        try (Connection con = dbUtils.getConnection()){
            return con.createQuery(sql)
                    .addParameter("teacherID", teacherID)
                    .throwOnMappingFailure(false)
                    .executeAndFetch(course.class);
        }
    }
    public static List<course> getListCartCourseByUserId(int user_id) {
        final String sql = "select course.course_id, course.course_name, course.course_fullinfo, course.course_lessinfo, course.course_rate, course.course_lession, course.img,course.created_at, course.updated_at, course.course_link, course.course_price\n" +
                "from user, cart, course\n" +
                "where cart.user_id = :user_id and cart.course_id = course.course_id";
        try (Connection con = dbUtils.getConnection()){
            return con.createQuery(sql)
                    .addParameter("user_id", user_id)
                    .executeAndFetch(course.class);
        }
    }

    public static List<user> getAll(int role_id, int currentPage, int recordsPerPage){
        final String sql = "select * from user \n" +
                "where role_id = :role_id\n" +
                "LIMIT :start,:limit";
        try (Connection con = dbUtils.getConnection()){
            return con.createQuery(sql)
                    .addParameter("start", currentPage * recordsPerPage - recordsPerPage)
                    .addParameter("limit", recordsPerPage)
                    .addParameter("role_id", role_id)
                    .executeAndFetch(user.class);
        }
    }
    public static Integer getNumberOfRowsAll(int role_id){
        final String sql = "select count(*) \n" +
                "from (select * \n" +
                "from user \n" +
                "where role_id = :role_id) as numberofrows;";
        try (Connection con = dbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("role_id", role_id)
                    .executeAndFetchFirst(Integer.class);
        }
    }
}
