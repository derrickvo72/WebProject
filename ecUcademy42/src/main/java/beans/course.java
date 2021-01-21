package beans;

import java.util.Date;

public class course {
    String course_id,course_name,course_fullinfo,course_lessinfo,img;
    Date created_at,updated_at;
    int course_lession;
    float course_rate;

    public course() {
    }

    public course(String course_id, String course_name, String course_fullinfo, String course_lessinfo, String img, Date created_at, Date updated_at, int course_lession, float course_rate) {
        this.course_id = course_id;
        this.course_name = course_name;
        this.course_fullinfo = course_fullinfo;
        this.course_lessinfo = course_lessinfo;
        this.img = img;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.course_lession = course_lession;
        this.course_rate = course_rate;
    }

    public String getCourse_id() {
        return course_id;
    }

    public void setCourse_id(String course_id) {
        this.course_id = course_id;
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

    public float getCourse_rate() {
        return course_rate;
    }

    public void setCourse_rate(float course_rate) {
        this.course_rate = course_rate;
    }
}
