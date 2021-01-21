package models;

import beans.course;
import org.sql2o.Connection;
import utils.dbUtils;

import java.util.List;

public class courseModel {
    public static List<course> getAll(){
        String sql = "select * from course";
        try(Connection con = dbUtils.getConnection()){
            return con.createQuery(sql).executeAndFetch(course.class);
        }
    }
}
