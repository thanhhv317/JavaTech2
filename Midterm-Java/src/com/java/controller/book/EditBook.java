package com.java.controller.book;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.java.model.Book;
import com.java.model.BookModel;
import com.java.model.CategoryModel;
import com.java.model.ConnectDB;
import com.java.model.PublisherModel;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
@WebServlet("/EditBook")
public class EditBook extends HttpServlet{

	/**
	 * 
	 */
	private static final String  UPLOAD_DIR = "images";
    
	ConnectDB conn=new ConnectDB();
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession();
		if (session.getAttribute("name") == null) {
			resp.sendRedirect(req.getContextPath()+"/Login");
		}
		else {
			String id=req.getParameter("id");
			String sql="Select * from Books where BookID="+id;
			String sql2="Select CategoryID, CategoryName from categories";
			String sql3 = "Select PublisherID, PublisherName from publishers";
			ResultSet rs=conn.getData(sql);
			ResultSet rsCate=conn.getData(sql2);
			ResultSet rsPub=conn.getData(sql3);
			Book book=new Book();
			ArrayList<CategoryModel> arrCate =  new ArrayList<CategoryModel>();
			ArrayList<PublisherModel> arrPub =  new ArrayList<PublisherModel>();
			try {
					
					while(rs.next()){
						book.bookID = rs.getInt(1);
						book.categoryID=rs.getInt(2);
						book.publisherID=rs.getInt(3);
						book.bookName=rs.getString(4);
						book.author=rs.getString(5);
						book.price=rs.getInt(6);
						book.image=rs.getString(7);
						book.description=rs.getString(8);
						book.quantity=rs.getInt(9);
						book.createDate=rs.getDate(10);
						book.createBy=rs.getInt(11);
						book.status=rs.getBoolean(12);
					}
					while(rsCate.next()) {
						CategoryModel cateMod = new CategoryModel();
						cateMod.categoryID = rsCate.getInt(1);
						cateMod.name = rsCate.getString(2);
						arrCate.add(cateMod);
					}
					while(rsPub.next()) {
						PublisherModel pub = new PublisherModel();
						pub.publisherID =  Integer.parseInt(rsPub.getString(1));
						pub.publisherName = rsPub.getString(2);
						arrPub.add(pub);
					}
					
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
//			PrintWriter p=resp.getWriter();
//			String pubName="";
//			for (int i=0;i<arrPub.size();++i) {
//				pubName+=arrPub.get(i).publisherName+" ";
//			}
//			p.println(pubName);
			req.setAttribute("data", book);
			req.setAttribute("category", arrCate);
			req.setAttribute("publisher", arrPub);
			req.getRequestDispatcher("view/edit-product.jsp").forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		String id=req.getParameter("id");
		String categoryID=req.getParameter("categoryID");
		String bookName = req.getParameter("bookName");
		String publisherID =req.getParameter("publisherID");
		String author=req.getParameter("author");
		String quantity = req.getParameter("quantity");
		String price = req.getParameter("price");
		String description = req.getParameter("description");
		String createDate = req.getParameter("createDate");
		String status = req.getParameter("status");
		String image = uploadFile(req);
		String sql="";
		if (!image.equals("images/")){
			sql=String.format("update books set CategoryID=%s, PublisherID=%s, BookName='%s', Author='%s', Price=%s, Image='%s' ,"
								+ "Description='%s', Quantity=%s, CreateDate='%s', Status=%s  where BookID=%s"
								,categoryID, publisherID, bookName,author,price,image,description,quantity, createDate, status, id);
		}
		else {
			sql=String.format("update books set CategoryID=%s, PublisherID=%s, BookName='%s', Author='%s', Price=%s ,"
					+ "Description='%s', Quantity=%s, CreateDate='%s', Status=%s  where BookID=%s"
					,categoryID, publisherID, bookName,author,price,description,quantity, createDate, status, id);
		}
		boolean check=conn.updateData(sql);
//		PrintWriter out = resp.getWriter();
		//out.println(fileName);
		if (check) {
			//success
			resp.sendRedirect(req.getContextPath()+"/Dashboard");
		}
		else {
			//fail
			resp.sendRedirect(req.getContextPath()+"/view/Error.jsp");
		}
		
		
		
	}
	public String uploadFile(HttpServletRequest req) throws IOException, ServletException{
        String fileName="";
        try{
            Part filePart = req.getPart("image");
            fileName = (String) getFileName(filePart);
            String applicationPath = req.getServletContext().getRealPath("");
            String basePath = applicationPath + File.separator + UPLOAD_DIR + File.separator;
            InputStream inputStream = null;
            OutputStream outputStream = null;
            try {
                File outputFilePath = new  File(basePath + fileName);
                inputStream = filePart.getInputStream();
                outputStream = new FileOutputStream(outputFilePath);
                int read = 0;
                byte[] bytes =  new  byte[1024];
                while((read = inputStream.read(bytes)) != -1){
                    outputStream.write(bytes, 0, read);
                }
            } catch (Exception e) {
                e.printStackTrace();
                fileName = "";
            }finally{
                if(inputStream != null){
                    inputStream.close();
                }
                if(outputStream != null){
                    outputStream.close();
                }
            }
            
        }catch(Exception e){
            fileName = "";
        }
        return UPLOAD_DIR+"/"+fileName;
    }
    private String  getFileName(Part part){
        for(String content : part.getHeader("content-disposition").split(";")){
            if(content.trim().startsWith("filename")){
                return content.substring(content.indexOf('=')+1).trim().replace("\"", "" );
            }
        }
        
        return null;
    }
}
