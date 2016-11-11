package com.dao;

import java.util.List;

import com.model.Review;

public interface ReviewDao {

	void add(Review rvw);

	List<Review> listofreview(int id);

}
