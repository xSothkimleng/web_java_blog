package web.com;

public class Blog_post {
	private int id;
	private int author_id;
	private String title;
	private String description;
	private boolean is_public;
	private String author_name;
	
	public Blog_post(){};
	public Blog_post(int id,int author_id,String title,String description,boolean is_public,String author_name) {
		this.setId(id);
		this.setAuthor_id(author_id);
		this.setTitle(title);
		this.setDescription(description);
		this.setIs_public(is_public);
		this.setAuthor_name(author_name);
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(int author_id) {
		this.author_id = author_id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public boolean isIs_public() {
		return is_public;
	}
	public void setIs_public(boolean is_public) {
		this.is_public = is_public;
	}
	public String getAuthor_name() {
		return author_name;
	}
	public void setAuthor_name(String author_name) {
		this.author_name = author_name;
	}
	
}
