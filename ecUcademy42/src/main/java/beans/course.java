package beans;

import java.util.*;

public class course {
    String course_name,course_fullinfo,course_lessinfo,img,course_link,category_name,category_info,teacher_name,created_at,updated_at;
    int course_lession,course_id,category_id,students,teacher;
    float course_rate,course_price;
    List<take> takes = new List<take>() {
        @Override
        public int size() {
            return 0;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public boolean contains(Object o) {
            return false;
        }

        @Override
        public Iterator<take> iterator() {
            return null;
        }

        @Override
        public Object[] toArray() {
            return new Object[0];
        }

        @Override
        public <T> T[] toArray(T[] a) {
            return null;
        }

        @Override
        public boolean add(take take) {
            return false;
        }

        @Override
        public boolean remove(Object o) {
            return false;
        }

        @Override
        public boolean containsAll(Collection<?> c) {
            return false;
        }

        @Override
        public boolean addAll(Collection<? extends take> c) {
            return false;
        }

        @Override
        public boolean addAll(int index, Collection<? extends take> c) {
            return false;
        }

        @Override
        public boolean removeAll(Collection<?> c) {
            return false;
        }

        @Override
        public boolean retainAll(Collection<?> c) {
            return false;
        }

        @Override
        public void clear() {

        }

        @Override
        public take get(int index) {
            return null;
        }

        @Override
        public take set(int index, take element) {
            return null;
        }

        @Override
        public void add(int index, take element) {

        }

        @Override
        public take remove(int index) {
            return null;
        }

        @Override
        public int indexOf(Object o) {
            return 0;
        }

        @Override
        public int lastIndexOf(Object o) {
            return 0;
        }

        @Override
        public ListIterator<take> listIterator() {
            return null;
        }

        @Override
        public ListIterator<take> listIterator(int index) {
            return null;
        }

        @Override
        public List<take> subList(int fromIndex, int toIndex) {
            return null;
        }
    };

    public course() {
    }


    public course(String course_name, String course_fullinfo, String course_lessinfo, String img, String course_link, String category_name, String category_info, String teacher_name, String created_at, String updated_at, int course_lession, int course_id, int category_id, int students, int teacher, float course_rate, float course_price, List<take> takes) {
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
        this.teacher = teacher;
        this.course_rate = course_rate;
        this.course_price = course_price;
        this.takes = takes;
    }

    public course(String course_name, int category_id, String course_fullinfo, String course_lessinfo, float course_price,
                  String img, String created_at, int teacher) {
        this.course_name = course_name;
        this.course_fullinfo = course_fullinfo;
        this.course_lessinfo = course_lessinfo;
        this.created_at = created_at;
        this.category_id = category_id;
        this.course_price = course_price;
        this.teacher = teacher;
        this.img = img;
    }

    public course(String course_name, int category_id, String course_fullinfo, String course_lessinfo, float course_price,
                  String img, String updated_at, int course_id, int teacher) {
        this.course_name = course_name;
        this.course_fullinfo = course_fullinfo;
        this.course_lessinfo = course_lessinfo;
        this.updated_at = updated_at;
        this.category_id = category_id;
        this.course_price = course_price;
        this.course_id = course_id;
        this.teacher = teacher;
        this.img = img;
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

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(String updated_at) {
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


    public List<take> getTakes() {
        return takes;
    }

    public void setTakes(List<take> takes) {
        this.takes = takes;
    }

    public String getTeacher_name() {
        return teacher_name;
    }

    public void setTeacher_name(String teacher_name) {
        this.teacher_name = teacher_name;
    }

    public int getTeacher() {
        return teacher;
    }

    public void setTeacher(int teacher) {
        this.teacher = teacher;
    }
}
