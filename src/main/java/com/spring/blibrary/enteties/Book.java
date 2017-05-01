package com.spring.blibrary.enteties;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "book_id")
	private Long id;

	@Column(name = "book_name" , nullable = false)
	private String name;
	
	@Column(name = "book_content" , nullable = false)
	private byte[] content;
	 
	@Column(name = "book_descr" , nullable = false)
	private String description;
	
	@Column(name = "book_pages" , nullable = false)
	private int pages;
	
	@Column(name = "book_publish_year" , nullable = false)
	private int publishYear;
	
	@Column(name = "book_language" , nullable = false)
	private String language;
	
	@Column(name = "book_image" , nullable = false)
	private byte[] image;
	
	@OneToMany(mappedBy = "book")
	private List<Vote> votes;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category_id")
	private Category category;
	
	@Column(name = "book_tupe" , nullable = false)
	private String tupe;
	
	@ManyToMany(cascade = CascadeType.ALL)
	 @JoinTable(
	      name = "book_author",
	      joinColumns = @JoinColumn(name = "book_id", referencedColumnName = "id"),
	      inverseJoinColumns = @JoinColumn(name = "author_id ", referencedColumnName = "id "))
	private List<Author> authors;
	
	@Column(name = "rating_tupe" , nullable = false)
	private float rating;
	
	public Book() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte[] getContent() {
		return content;
	}

	public void setContent(byte[] content) {
		this.content = content;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPages() {
		return pages;
	}

	public void setPages(int pages) {
		this.pages = pages;
	}

	public int getPublishYear() {
		return publishYear;
	}

	public void setPublishYear(int publishYear) {
		this.publishYear = publishYear;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public List<Vote> getVotes() {
		return votes;
	}

	public void setVotes(List<Vote> votes) {
		this.votes = votes;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getTupe() {
		return tupe;
	}

	public void setTupe(String tupe) {
		this.tupe = tupe;
	}

	public List<Author> getAuthors() {
		return authors;
	}

	public void setAuthors(List<Author> authors) {
		this.authors = authors;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}
	
}
