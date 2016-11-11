package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Review;

@Repository
@Transactional
public class ReviewDaoImpl implements ReviewDao{

	
	@Autowired
	SessionFactory sf;
	
	@Override
	public void add(Review rvw) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(rvw);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Review> listofreview(int id) {
		// TODO Auto-generated method stub
		return (List<Review>) sf.getCurrentSession().createQuery("from REVIEW where PRDID='"+id+"'").list();
	}
	
	

}
