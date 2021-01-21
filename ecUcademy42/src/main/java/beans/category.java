package beans;

public class category {
    String category_id, category_name, category_info;

    public category() {
    }

    public category(String category_id, String category_name, String category_info) {
        this.category_id = category_id;
        this.category_name = category_name;
        this.category_info = category_info;
    }

    public String getCategory_id() {
        return category_id;
    }

    public void setCategory_id(String category_id) {
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
