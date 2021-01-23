package beans;

public class category {
    String category_name, category_info;
    int category_id;

    public category() {
    }

    public category(int category_id, String category_name, String category_info) {
        this.category_id = category_id;
        this.category_name = category_name;
        this.category_info = category_info;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
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
}
