package com.spring.blibrary.enteties;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "book_rating_view")
public class RatingValueView {
	
	@Id
    @Column(name = "rating_id")
	private Long id;
	
	@Column(name = "rating_value")
	private float rating;
	
	@OneToOne(fetch=FetchType.LAZY, mappedBy="rating")
	private Book book;
	
	public RatingValueView() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
	
}
