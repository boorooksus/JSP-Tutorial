<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<% 
/* // 파일 저장 서버 경로 설정
String fileUploadPath = "C:\\Users\\booro\\Desktop\\JSP\\fileupload";

//파일 업로드를 위한 DiskFileUpload 클래스 생성
ServletFileUpload upload = new ServletFileUpload();

// 폼 페이지의 요청 파라미터를 전달받도록 DiskFileUpload 객체 타입의 parseRequest() 메소드 작성
List items = upload.parseRequest(request);

// 폼 페이지의 요청 파라미터를 iterator 클래스로 변환
Iterator params = items.iterator();


// 폼 페이지의 요청 파라미터가 없을 때c까지 반복
while (params.hasNext()){
	
	// 폼 페이지의 요청 파라미터의 이름을 가져오도록 Iterator 객체 타입의 next() 메소드를 작성
	FileItem fileItem = (FileItem) params.next();
	
	// 폼페이지의 요청 파라미터가 파일이면 서버의 파일 저장 경로에 업로드 파일을 저장
	if(!fileItem.isFormField()){
		String fileName = fileItem.getName();
		fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
		File file = new File(fileUploadPath + "/" + fileName);
		fileItem.write(file);
	}
}  */

DiskFileItemFactory factory = new DiskFileItemFactory();

ServletFileUpload upload = new ServletFileUpload(factory);

List<FileItem> items = upload.parseRequest(request);

Iterator<FileItem> iter = items.iterator();

while (iter.hasNext()){
	FileItem item = iter.next();
	
	if(item.isFormField()){
		String name = item.getFieldName();
		String value = item.getString("utf-8");
		
	}else{
		String name = item.getFieldName();
		String fileName = item.getName();
		
		item.write(new File("C:\\Users\\booro\\Desktop\\JSP\\fileupload", fileName));
	}
}

%>


<!-- package servlet;
 
 
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
 
 
@WebServlet("/fileUpload")
public class FileUploadServlet extends HttpServlet {
 
 
    private static final String CHARSET = "utf-8";
    private static final String ATTACHES_DIR = "C:\\attaches";
    private static final int LIMIT_SIZE_BYTES = 1024 * 1024;
 
 
    @Override
    protected void doPost(HttpServletRequest request,  HttpServletResponse response)
            throws ServletException, IOException {
 
 
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding(CHARSET);
        PrintWriter out = response.getWriter();
 
 
        File attachesDir = new File(ATTACHES_DIR);
 
 
        DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
        fileItemFactory.setRepository(attachesDir);
        fileItemFactory.setSizeThreshold(LIMIT_SIZE_BYTES);
        ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
 
 
        try {
            List<FileItem> items = fileUpload.parseRequest(request);
            for (FileItem item : items) {
                if (item.isFormField()) {
                    System.out.printf("파라미터 명 : %s, 파라미터 값 :  %s \n", item.getFieldName(), item.getString(CHARSET));
                } else {
                    System.out.printf("파라미터 명 : %s, 파일 명 : %s,  파일 크기 : %s bytes \n", item.getFieldName(),
                            item.getName(), item.getSize());
                    if (item.getSize() > 0) {
                        String separator = File.separator;
                        int index =  item.getName().lastIndexOf(separator);
                        String fileName = item.getName().substring(index  + 1);
                        File uploadFile = new File(ATTACHES_DIR +  separator + fileName);
                        item.write(uploadFile);
                    }
                }
            }
 
 
            out.println("<h1>파일 업로드 완료</h1>");
 
 
        } catch (Exception e) {
            // 파일 업로드 처리 중 오류가 발생하는 경우
            e.printStackTrace();
            out.println("<h1>파일 업로드 중 오류가  발생하였습니다.</h1>");
        }
    }
 
 
} -->

