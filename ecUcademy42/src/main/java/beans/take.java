package beans;

import java.time.LocalDateTime;

public class take {
    int user_id, course_id, rating;
    float complete;
    String comment,startdate, ratingdate, user_fullname;

    public take() {
    }

    public take(int user_id, int course_id, int rating, float complete, String comment, String startdate, String ratingdate, String user_fullname) {
        this.user_id = user_id;
        this.course_id = course_id;
        this.rating = rating;
        this.complete = complete;
        this.comment = comment;
        this.startdate = startdate;
        this.ratingdate = ratingdate;
        this.user_fullname = user_fullname;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
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

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate;
    }

    public String getRatingdate() {
        return ratingdate;
    }

    public void setRatingdate(String ratingdate) {
        this.ratingdate = ratingdate;
    }

    public String getUser_fullname() {
        return user_fullname;
    }

    public void setUser_fullname(String user_fullname) {
        this.user_fullname = user_fullname;
    }
}
