package models;

import beans.category;
import org.sql2o.Connection;
import utils.dbUtils;

import java.util.List;

public class categoryModel {
    public static List<category> getAll(){
        String sql = "select * from category";
        try(Connection con = dbUtils.getConnection()){
            return con.createQuery(sql).executeAndFetch(category.class);
        }
    }
}
