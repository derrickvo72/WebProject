package models;

import beans.course;
import org.sql2o.Connection;
import utils.dbUtils;

import java.util.List;

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
        final String sql = "INSERT INTO course (course_name, course_fullinfo, course_lessinfo, created_at, course_link, course_price, category_id) " +
                "VALUES (:courseName,:courseFullinfo,:courseLessinfo,:createdAt,:courseLink,:coursePrice,:category_id)\n";
        try (Connection con = dbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("courseName", c.getCourse_name())
                    .addParameter("courseFullinfo", c.getCourse_fullinfo())
                    .addParameter("courseLessinfo", c.getCourse_lessinfo())
                    .addParameter("createdAt", c.getCreated_at())
                    .addParameter("courseLink", c.getCourse_link())
                    .addParameter("coursePrice", c.getCourse_price())
                    .addParameter("category_id", c.getCategory_id())
                    .executeUpdate();
        }

    }
}
