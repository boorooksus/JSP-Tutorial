<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("UTF-8");

	String filename="";
	/* String realFolder = "C:\\Users\\booro\\Desktop\\JSP\\JSP-Tutorial\\WebMarket\\resources\\images"; */
	String realFolder = "C:\\Users\\booro\\Desktop\\JSP\\JSP-Tutorial\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\JSPBook\\WebMarket\\resources\\images";
	int maxSize = 5 * 1024 * 1024;
	String enType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, enType, new DefaultFileRenamePolicy());
	
	// form에 파일이 있으므로 requst.getParameter(~) 가 아니라 multi.getParameter인 것 주의
	String productId = multi.getParameter("productId");
	String name= multi.getParameter("name");
	String unitPrice= multi.getParameter("unitPrice");
	String description= multi.getParameter("description");
	String manufacturer= multi.getParameter("manufacturer");  // 제조사
	String category= multi.getParameter("category");
	String unitsInStock= multi.getParameter("unitsInStock");  // 재고
	String condition= multi.getParameter("condition");  // 신상품 or 중고 or 재생품
	
	Integer price;
	
	if(unitPrice.isEmpty()){
		price = 0;
	}else{
		price = Integer.valueOf(unitPrice);
	}
	
	long stock;
	
	if(unitsInStock.isEmpty()){
		stock = 0;
	}else{
		stock = Long.valueOf(unitsInStock);
	}
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(fileName);
	
	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");
%>
