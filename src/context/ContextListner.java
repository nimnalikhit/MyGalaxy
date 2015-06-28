package context;


import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class ContextListner implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("dude you just undeployed the application plz don't do that it really hurts");
		
		
	}

	public void contextInitialized(ServletContextEvent aa) {
		String path,prop_path;
		ServletContext con=aa.getServletContext();
		String choosedb=con.getInitParameter("choosedb");
		String cdb=con.getInitParameter("createdb");
		System.out.println("variable from xml hav ben taken");
		if(choosedb.equals("oracle"))
		{
			prop_path=con.getRealPath("WEB-INF//properties//dboracle.properties");
			prop.LoadProperty.loadProp(prop_path);
			System.out.println("oracle path loaded");
			if(cdb.equals("yes"))
			{
			path=con.getRealPath("WEB-INF//table//oracle.sql");
			
			createdb.CreateDB.create(path);
			System.out.println("queries path loaded");
			}
		}
			else if(choosedb.equals("mysql"))
			{
				
				prop_path=con.getRealPath("WEB-INF//properties//dbmysql.properties");
				prop.LoadProperty.loadProp(prop_path);
			
				if(cdb.equals("yes"));
			{
				path=con.getRealPath("WEB-INF//table//mysql.sql");
				createdb.CreateDB.create(path);
			}
			}
		System.out.println("listner working");
	}
		
		
	
	
	
}
