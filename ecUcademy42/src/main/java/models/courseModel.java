package models;

import beans.course;
import org.sql2o.Connection;
import utils.dbUtils;

import java.util.List;

public class courseModel {
    public static List<course> getAll(){
        String sql = "select course.course_id,course_name,course_fullinfo,course_lessinfo,course_rate,course_lession,img,created_at,updated_at,course_link,course_price,category.category_id,category.category_name,category.category_info,count(user_id) as students\n" +
                "from course, category, categorizes, takes\n" +
                "where course.course_id = categorizes.course_id and categorizes.category_id = category.category_id and takes.course_id = course.course_id\n" +
                "group BY course.course_id,course_name,course_fullinfo,course_lessinfo,course_rate,course_lession,img,created_at,updated_at,course_link,course_price,category.category_id,category.category_name,category.category_info\n" +
                "ORDER BY course_rate DESC";
        try(Connection con = dbUtils.getConnection()){
            return con.createQuery(sql).executeAndFetch(course.class);
        }
    }
}
