package com.service;


import java.util.List;

import com.model.Review;

public interface ReviewService {

	void add(Review rvw);

	List<Review> getallreview(int id);

}
