package fuck;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class sellItemDaoServlet
 */
@MultipartConfig(location="D:\\TomcatUpload\\images")
public class sellItemDaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sellItemDaoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//sellerId 应该从session里面获得，这里默认为0；
		String sellerId = "0";
        String itemName =request.getParameter("name");
        String price = request.getParameter("price");
        Part part = request.getPart("image");
        String fileName = getFileName(part);
        fileName=UUID.randomUUID().toString()+fileName;
        part.write(fileName);
        File file =new File("D:\\TomcatUpload\\images\\"+fileName);
        Image pic = new Image(file);
        ItemsDao item = new ItemsDao(sellerId,itemName,price,pic);
        try 
        {
       	     ItemDaoImp.sellItem(item);
			 response.sendRedirect(request.getContextPath() + "/sellResult.html");
			 delFile("D:\\TomcatUpload\\images",fileName);
			 ItemDaoImp.showItemPic(1);
		} catch (Exception e)
        {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private String getFileName(Part part) 
	{
        String head = part.getHeader("Content-Disposition");
        String fileName = head.substring(head.indexOf("filename=\"")+10, head.lastIndexOf("\""));
        return fileName;
    }
	public void delFile(String path,String fileName)
	{
        File file=new File(path+"\\"+fileName);
        if(file.exists()&&file.isFile())
            file.delete();
    }
}
