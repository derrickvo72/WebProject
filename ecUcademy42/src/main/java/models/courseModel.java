package models;

import beans.course;
import beans.take;
import org.sql2o.Connection;
import utils.dbUtils;

import java.util.List;
import java.util.Optional;

public class courseModel {
    public static List<course> getAll(){
        String sql = "select course.course_id,course_name,course_fullinfo,course_lessinfo,course_rate,course_lession,img,created_at,updated_at,course_link,course_price,category.category_id,category.category_name,category.category_info\n" +
                "from course, category\n" +
                "where course.category_id = category.category_id\n" +
                "ORDER BY course_rate DESC";
        try(Connection con = dbUtils.getConnection()){
            return con.createQuery(sql).executeAndFetch(course.class);
        }
    }
    public static void add(course c) {
        final String sql = "INSERT INTO course (course_name, course_fullinfo, course_lessinfo, created_at, course_link, course_price, category_id, teacher) " +
                "VALUES (:courseName,:courseFullinfo,:courseLessinfo,:createdAt,:courseLink,:coursePrice,:category_id,:teacher_id)\n";
        try (Connection con = dbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("courseName", c.getCourse_name())
                    .addParameter("courseFullinfo", c.getCourse_fullinfo())
                    .addParameter("courseLessinfo", c.getCourse_lessinfo())
                    .addParameter("createdAt", c.getCreated_at())
                    .addParameter("courseLink", c.getCourse_link())
                    .addParameter("coursePrice", c.getCourse_price())
                    .addParameter("category_id", c.getCategory_id())
                    .addParameter("teacher_id", c.getTeacher_id())
                    .executeUpdate();
        }

    }
    public static List<course> findCourseByCourseId(int course_id){
        final String sql = "select course.course_id,course_name,course_fullinfo,course_lessinfo,course_rate,course_lession,course.img," +
                "created_at,updated_at,course_link,course_price,course.category_id,category.category_name,category.category_info,teacher,user.user_fullname\n" +
                "from course, category, user\n" +
                "where course.category_id = category.category_id and course.teacher = user.user_id and course.course_id = :course_id";
        try (Connection con = dbUtils.getConnection()) {
            return  con.createQuery(sql)
                    .addParameter("course_id", course_id)
                    .throwOnMappingFailure(false)
                    .executeAndFetch(course.class);
        }
    }
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
    public static List<course> fulltextsearch(String keyword){
        final String sql = "SELECT *\n" +
                "FROM  course\n" +
                "WHERE\n" +
                "    MATCH(course_name, course_fullinfo, course_lessinfo) \n" +
                "    AGAINST(:keyword);";
        try (Connection con = dbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("keyword", keyword)
                    .throwOnMappingFailure(false)
                    .executeAndFetch(course.class);
        }
    }
}
