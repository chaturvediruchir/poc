/**
 * 
 */
package com.ruchir.webeditor.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Ruchir
 *
 */


@Entity
@Table(name="html_text")
public class RichText {
	
	@Id
	@GeneratedValue
	private long textId;
	
	
	private String htmlText;
	
	public RichText() {	
		super();
	}

	/**
	 * @return the textId
	 */
	public long getTextId() {
		return textId;
	}

	/**
	 * @param textId the textId to set
	 */
	public void setTextId(long textId) {
		this.textId = textId;
	}

	/**
	 * @return the htmlText
	 */
	public String getHtmlText() {
		return htmlText;
	}

	/**
	 * @param htmlText the htmlText to set
	 */
	public void setHtmlText(String htmlText) {
		this.htmlText = htmlText;
	}



}
