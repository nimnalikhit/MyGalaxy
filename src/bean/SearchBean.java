package bean;


import java.util.ArrayList;
import java.util.StringTokenizer;

import dao.SearchDAO;

public class SearchBean {
	private String search;
	ArrayList al=new ArrayList();
	ArrayList al1=null;
	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search=search;

		System.out.println("searching....: "+this.search);
	}
	

	public ArrayList array()
	{	  
		System.out.println("inside array initiating tokenizer ");
		StringTokenizer st=new StringTokenizer(search);
		while(st.hasMoreTokens())
		{
				al.add(st.nextToken());
		}
		  System.out.println("inside tokenizer task done value = "+al);
		  
		return al;
	}
	public ArrayList searchVal()
	{   
		System.out.println("bean search function");
		SearchDAO sd=new SearchDAO(this);
		 al1=sd.SearchData(array());
		  System.out.println("search task done"+al1);
		return al1;
	}

}
