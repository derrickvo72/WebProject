package beans;

public class take {
    int userid, courseid, rating;
    float complete;
    String comment;

    public take() {
    }

    public take(int userid, int courseid, int rating, float complete, String comment) {

        this.userid = userid;
        this.courseid = courseid;
        this.rating = rating;
        this.complete = complete;
        this.comment = comment;
    }

    public take(int userid, int courseid, int rating, String comment) {
        this.userid = userid;
        this.courseid = courseid;
        this.rating = rating;
        this.comment = comment;
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

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public float getComplete() {
        return complete;
    }

    public void setComplete(float complete) {
        this.complete = complete;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
