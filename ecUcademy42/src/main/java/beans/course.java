package beans;

import java.util.Date;

public class course {
    String course_name,course_fullinfo,course_lessinfo,img,course_link,category_name,category_info,teacher_name;
    Date created_at,updated_at;
    int course_lession,course_id,category_id,students,teacher_id;
    float course_rate,course_price;

    public course() {
    }

    public course(String course_name, int category_id, String course_fullinfo, String course_lessinfo, float course_price,
                  Date created_at, String course_link, int teacher_id) {
        this.course_name = course_name;
        this.course_fullinfo = course_fullinfo;
        this.course_lessinfo = course_lessinfo;
        this.course_link = course_link;
        this.created_at = created_at;
        this.category_id = category_id;
        this.course_price = course_price;
        this.teacher_id = teacher_id;
    }

    public course(String course_name, String course_fullinfo, String course_lessinfo, String img, String course_link, String category_name, String category_info, String teacher_name, Date created_at, Date updated_at, int course_lession, int course_id, int category_id, int students, int teacher_id, float course_rate, float course_price) {
        this.course_name = course_name;
        this.course_fullinfo = course_fullinfo;
        this.course_lessinfo = course_lessinfo;
        this.img = img;
        this.course_link = course_link;
        this.category_name = category_name;
        this.category_info = category_info;
        this.teacher_name = teacher_name;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.course_lession = course_lession;
        this.course_id = course_id;
        this.category_id = category_id;
        this.students = students;
        this.teacher_id = teacher_id;
        this.course_rate = course_rate;
        this.course_price = course_price;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getCourse_fullinfo() {
        return course_fullinfo;
    }

    public void setCourse_fullinfo(String course_fullinfo) {
        this.course_fullinfo = course_fullinfo;
    }

    public String getCourse_lessinfo() {
        return course_lessinfo;
    }

    public void setCourse_lessinfo(String course_lessinfo) {
        this.course_lessinfo = course_lessinfo;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public float getCourse_price() {
        return course_price;
    }

    public void setCourse_price(float course_price) {
        this.course_price = course_price;
    }

    public String getCourse_link() {
        return course_link;
    }

    public void setCourse_link(String course_link) {
        this.course_link = course_link;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public String getCategory_info() {
        return category_info;
    }

    public void setCategory_info(String category_info) {
        this.category_info = category_info;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }

    public int getCourse_lession() {
        return course_lession;
    }

    public void setCourse_lession(int course_lession) {
        this.course_lession = course_lession;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public float getCourse_rate() {
        return course_rate;
    }

    public void setCourse_rate(float course_rate) {
        this.course_rate = course_rate;
    }

    public int getStudents() {
        return students;
    }

    public void setStudents(int students) {
        this.students = students;
    }
    public String getTeacher_name() {
        return teacher_name;
    }

    public void setTeacher_name(String teacher_name) {
        this.teacher_name = teacher_name;
    }

    public int getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(int teacher_id) {
        this.teacher_id = teacher_id;
    }
}
