package beans;

public class take {
    int userid, courseid;

    public take(int userid, int courseid) {
        this.userid = userid;
        this.courseid = courseid;
    }

    public take() {
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getCourseid() {
        return courseid;
    }

    public void setCourseid(int courseid) {
        this.courseid = courseid;
    }
}
