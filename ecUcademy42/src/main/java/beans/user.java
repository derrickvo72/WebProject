package beans;

import java.util.*;

public class user {
    int user_id, role_id, user_wallet;
    String img,user_address,user_email,user_phone,user_gender,user_fullname,user_username,user_password;
    Date user_bday;
    List<course> courses = new List<course>() {
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
        public Iterator<course> iterator() {
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
        public boolean add(course course) {
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
        public boolean addAll(Collection<? extends course> c) {
            return false;
        }

        @Override
        public boolean addAll(int index, Collection<? extends course> c) {
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
        public course get(int index) {
            return null;
        }

        @Override
        public course set(int index, course element) {
            return null;
        }

        @Override
        public void add(int index, course element) {

        }

        @Override
        public course remove(int index) {
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
        public ListIterator<course> listIterator() {
            return null;
        }

        @Override
        public ListIterator<course> listIterator(int index) {
            return null;
        }

        @Override
        public List<course> subList(int fromIndex, int toIndex) {
            return null;
        }
    };

    public user() {
    }

    public user(int user_id, String user_fullname, String user_address, String user_phone, String user_email, String user_gender, Date user_bday) {
        this.user_id = user_id;
        this.user_address = user_address;
        this.user_email = user_email;
        this.user_phone = user_phone;
        this.user_gender = user_gender;
        this.user_fullname = user_fullname;
        this.user_bday = user_bday;
    }

    public user(String user_username, String user_password, String user_email, int role_id) {
        this.role_id = role_id;
        this.user_email = user_email;
        this.user_username = user_username;
        this.user_password = user_password;
    }

    public user(int user_id, int role_id, int user_wallet, String img, String user_address, String user_email, String user_phone, String user_gender, String user_fullname, String user_username, String user_password, Date user_bday) {
        this.user_id = user_id;
        this.role_id = role_id;
        this.user_wallet = user_wallet;
        this.img = img;
        this.user_address = user_address;
        this.user_email = user_email;
        this.user_phone = user_phone;
        this.user_gender = user_gender;
        this.user_fullname = user_fullname;
        this.user_username = user_username;
        this.user_password = user_password;
        this.user_bday = user_bday;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public int getUser_wallet() {
        return user_wallet;
    }

    public void setUser_wallet(int user_wallet) {
        this.user_wallet = user_wallet;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getUser_address() {
        return user_address;
    }

    public void setUser_address(String user_address) {
        this.user_address = user_address;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_gender() {
        return user_gender;
    }

    public void setUser_gender(String user_gender) {
        this.user_gender = user_gender;
    }

    public String getUser_fullname() {
        return user_fullname;
    }

    public void setUser_fullname(String user_fullname) {
        this.user_fullname = user_fullname;
    }

    public String getUser_username() {
        return user_username;
    }

    public void setUser_username(String user_username) {
        this.user_username = user_username;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public Date getUser_bday() {
        return user_bday;
    }

    public void setUser_bday(Date user_bday) {
        this.user_bday = user_bday;
    }

    public List<course> getCourses() {
        return courses;
    }

    public void setCourses(List<course> courses) {
        this.courses = courses;
    }

    @Override
    public String toString() {
        return "user{" +
                "user_id=" + user_id +
                ", role_id=" + role_id +
                ", user_wallet=" + user_wallet +
                ", img='" + img + '\'' +
                ", user_address='" + user_address + '\'' +
                ", user_email='" + user_email + '\'' +
                ", user_phone='" + user_phone + '\'' +
                ", user_gender='" + user_gender + '\'' +
                ", user_fullname='" + user_fullname + '\'' +
                ", user_username='" + user_username + '\'' +
                ", user_password='" + user_password + '\'' +
                ", user_bday=" + user_bday +
                '}';
    }
}
