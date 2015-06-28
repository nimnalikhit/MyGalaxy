package prop;

import java.io.FileInputStream;
import java.util.Enumeration;
import java.util.Properties;

public class LoadProperty {
	
	public static void loadProp(String path)
	{
		try
		{
			
		
		FileInputStream fin=new FileInputStream(path);
		Properties p= new Properties();
		p.load(fin);
		Enumeration en=p.propertyNames();
		while(en.hasMoreElements())
		{
			String key=(String)en.nextElement();
			String value=p.getProperty(key);
			System.setProperty(key, value);
			System.out.println(key+":"+value);
			
		}
		}
		catch(Exception e)
		{
			
		}
	}

}
