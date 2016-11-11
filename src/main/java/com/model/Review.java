package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.Length;
import org.springframework.stereotype.Component;

@Entity(name="REVIEW")
@Component
public class Review {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int review_id;
	
	private String reviewdate;
	public String getReviewdate() {
		return reviewdate;
	}

	public String username;
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setReviewdate(String reviewdate) {
		this.reviewdate = reviewdate;
	}

	@Column(name="PRDID")
	private int prd_id;
	public int getReview_id() {
		return review_id;
	}

	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}

	public int getPrd_id() {
		return prd_id;
	}

	private float rating;
	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public void setPrd_id(int prd_id) {
		this.prd_id = prd_id;
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

	@Length(min=1,max=64000)
	private String description;
	
	private String title;
	
	

}
