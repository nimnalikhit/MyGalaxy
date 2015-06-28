package bean;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class downloader extends HttpServlet{

  private static final int BYTES_DOWNLOAD = 200*1024*1024;

  public void service(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
   {
	res.setContentType("*/*");
	String fname=req.getParameter("file");
	res.setHeader("Content-Disposition","attachment;filename="+fname);

	ServletContext ctx = getServletContext();
	InputStream is = ctx.getResourceAsStream("/upload_files/"+fname);

	int read=0;
	byte[] bytes = new byte[BYTES_DOWNLOAD];
	OutputStream os = res.getOutputStream();

	while((read = is.read(bytes))!= -1){
		os.write(bytes, 0, read);
	}
	os.flush();
	os.close();
	System.out.println("download successfully");
   }
}