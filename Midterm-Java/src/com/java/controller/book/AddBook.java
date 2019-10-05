package com.java.controller.book;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.java.model.CategoryModel;
import com.java.model.ConnectDB;
import com.java.model.PublisherModel;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
@WebServlet("/AddBook")
public class AddBook extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private static final String  UPLOAD_DIR = "images";
    
    
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		ConnectDB conn = new ConnectDB();
		String sql = "Select CategoryID, CategoryName from categories";
		ResultSet rsCate = conn.getData(sql);
		ArrayList<CategoryModel> arrCate =  new ArrayList<CategoryModel>();
		try {
			while(rsCate.next()) {
				CategoryModel cateMod = new CategoryModel();
				cateMod.categoryID = Integer.parseInt(rsCate.getString(1));
				cateMod.name = rsCate.getString(2);
				arrCate.add(cateMod);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("dataCate", arrCate);
		
		sql = "Select PublisherID, PublisherName from publishers";
		ResultSet rsPub = conn.getData(sql);
		ArrayList<PublisherModel> arrPub =  new ArrayList<PublisherModel>();
		try {
			while(rsPub.next()) {
				PublisherModel pub = new PublisherModel();
				pub.publisherID =  Integer.parseInt(rsPub.getString(1));
				pub.publisherName = rsPub.getString(2);
				arrPub.add(pub);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("dataPub", arrPub);
		
		req.getRequestDispatcher("view/add-product.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		
		String name = req.getParameter("nameBook");
		int opBook = Integer.parseInt(req.getParameter("opBook"));
		String authBook = req.getParameter("authBook");
		int opNXB = Integer.parseInt(req.getParameter("opNXB"));
		int quantityBook = Integer.parseInt(req.getParameter("quantityBook"));
		int priceBook = Integer.parseInt(req.getParameter("priceBook"));
		String descriptionBook = req.getParameter("descriptionBook");
		int opStatus = Integer.parseInt(req.getParameter("opStatus"));
		String date = req.getParameter("createDate");
		int userId = (int) session.getAttribute("userID");	
        String fileName = uploadFile(req);
        
        
		String sql = "INSERT INTO books VALUES (null,'"+opBook+"','"+opNXB+"','"+name+"','"+authBook+"','"+priceBook+"','"+fileName+"','"+descriptionBook+"','"+quantityBook+"','"+date+"','"+userId+"','"+opStatus+"')";
		ConnectDB conn = new ConnectDB();
		
		boolean check = conn.updateData(sql);
		if(check) {
			resp.sendRedirect(req.getContextPath()+"/Dashboard");
		}
		else {
			resp.sendRedirect(req.getContextPath()+"/view/Error.jsp");
		}
	}
	
	public String uploadFile(HttpServletRequest req) throws IOException, ServletException{
        String fileName="";
        try{
            Part filePart = req.getPart("photo");
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
        return fileName;
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
