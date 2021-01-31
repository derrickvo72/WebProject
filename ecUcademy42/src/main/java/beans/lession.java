package beans;

public class lession {
    int lession_id, course_id;
    String lession_link;

    public lession() {
    }

    public lession(int lession_id, int course_id, String lession_link) {
        this.lession_id = lession_id;
        this.course_id = course_id;
        this.lession_link = lession_link;
    }

    public int getLession_id() {
        return lession_id;
    }

    public void setLession_id(int lession_id) {
        this.lession_id = lession_id;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public String getLession_link() {
        return lession_link;
    }

    public void setLession_link(String lession_link) {
        this.lession_link = lession_link;
    }
}
