package models;

import beans.course;
import org.sql2o.Connection;
import utils.dbUtils;

import java.util.List;

public class courseModel {
    public static List<course> getAll(){
        String sql = "select course.course_id,course_name,course_fullinfo,course_lessinfo,course_rate,course_lession,course.img,created_at,updated_at,course_link,course_price,category.category_id,category.category_name,category.category_info, user.user_fullname as teacher_name ,teacher, count(takes.user_id) as students\n" +
                "from  user, category,course LEFT JOIN takes on (course.course_id = takes.course_id)\n" +
                "where course.category_id = category.category_id and user.user_id = course.teacher\n" +
                "group BY course.course_id,course_name,course_fullinfo,course_lessinfo,course_rate,course_lession,img,created_at,updated_at,course_link,course_price,category.category_id,category.category_name,category.category_info, teacher_name, teacher\n" +
                "ORDER BY course_rate DESC, students DESC";
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
                    .addParameter("teacher_id", c.getTeacher())
                    .executeUpdate();
        }

    }
    public static List<course> findCourseByCourseId(int course_id){
        final String sql = "select course.course_id,course_name,course_fullinfo,course_lessinfo,course_rate,course_lession,course.img," +
                "created_at,updated_at,course_link,course_price,course.category_id,category.category_name,category.category_info,teacher,user.user_fullname as teacher_name, count(takes.user_id) as students\n" +
                "from course, category, user, takes\n" +
                "where course.category_id = category.category_id and course.teacher = user.user_id and takes.course_id = course.course_id and course.course_id = :course_id";
        try (Connection con = dbUtils.getConnection()) {
            return  con.createQuery(sql)
                    .addParameter("course_id", course_id)
                    .executeAndFetch(course.class);
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
                    .executeAndFetch(course.class);
        }
    }
    public static Integer findNextId(){
        final String sql = "SELECT AUTO_INCREMENT\n" +
                "FROM information_schema.TABLES\n" +
                "WHERE TABLE_SCHEMA = \"courseonline\"\n" +
                "AND TABLE_NAME = \"course\";";
        try (Connection con = dbUtils.getConnection()) {
            return con.createQuery(sql)
                    .executeAndFetchFirst(Integer.class);
        }
    }
}
