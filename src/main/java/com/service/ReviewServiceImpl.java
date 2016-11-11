package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ReviewDao;
import com.model.Review;

@Service
@Transactional
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	ReviewDao rwd;
	
	
	@Override
	public void add(Review rvw) {
		
		rwd.add(rvw);
	}


	@Override
	public List<Review> getallreview(int id) {
		// TODO Auto-generated method stub
		return rwd.listofreview(id);
	}

}
