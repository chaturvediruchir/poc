/**
 * 
 */
package com.ruchir.webeditor.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ruchir.webeditor.model.RichText;

/**
 * @author Ruchir Chaturvedi
 * 
 */
@Service
public class HibernateHtmlTextRepositoryImpl implements HtmlTextRepository {

	private static final Logger logger = LoggerFactory
			.getLogger(HibernateHtmlTextRepositoryImpl.class);

	private SessionFactory sessionFactory;

	@Autowired
	public HibernateHtmlTextRepositoryImpl(SessionFactory pSessionFactory) {
		this.sessionFactory = pSessionFactory;
	}

	protected Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}


	/* (non-Javadoc)
	 * @see com.ruchir.webEditor.service.HtmlTextRepository#addHtmlText(java.lang.String)
	 */
	@Override
	@Transactional
	public int addHtmlText(String pHtmlText) throws Exception {
		logger.debug("This is html text repository");
		RichText mRichText = new RichText();
		mRichText.setHtmlText(pHtmlText);
		getCurrentSession().save(mRichText);

		return 0;		
	}

}
