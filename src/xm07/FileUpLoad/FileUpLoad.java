package xm07.FileUpLoad;

/**
 * Created by NightYuan on 2018/5/30.
 */

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author Administrator
 * 文件上传
 * 具体步骤：
 * 1）获得磁盘文件条目工厂 DiskFileItemFactory 要导包
 * 2） 利用 request 获取 真实路径 ，供临时文件存储，和 最终文件存储 ，这两个存储位置可不同，也可相同
 * 3）对 DiskFileItemFactory 对象设置一些 属性
 * 4）高水平的API文件上传处理  ServletFileUpload upload = new ServletFileUpload(factory);
 * 目的是调用 parseRequest（request）方法  获得 FileItem 集合list ，
 *
 * 5）在 FileItem 对象中 获取信息，   遍历， 判断 表单提交过来的信息 是否是 普通文本信息  另做处理
 * 6）
 *    第一种. 用第三方 提供的  item.write( new File(path,filename) );  直接写到磁盘上
 *    第二种. 手动处理
 *
 */

public class FileUpLoad extends HttpServlet {
    public String filename;


    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String work_id = "";
        String teacher = "";
        String teaname = "";
        String id = "";
        String tempPath = "c:\\upload\\";
        File file = new File(tempPath);
        if (!file.exists()) {
            file.mkdir();
        }

        System.out.println(ServletFileUpload.isMultipartContent(request));
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // upload.setSizeMax(1024 * 1024 * 50L);
        // Parse the request
        List<String> pList = new ArrayList<>();
        List<FileItem> list = null;
        List items = null;
        try {

            items = upload.parseRequest(request);
        } catch (FileUploadException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        byte data[] = new byte[1024];
        int i = 0;
        if (items != null)
            for (Iterator iterator = items.iterator(); iterator.hasNext(); ) {
                FileItem item = (FileItem) iterator.next();

                if (item.isFormField()) {
                    System.out.print(new String(item.getString("UTF-8")));
                    if ("work_id".equals(item.getFieldName())) {
                        work_id = new String(item.getString("UTF-8"));
                    } else if ("teacher".equals(item.getFieldName())) {
                        teacher = new String(item.getString("UTF-8"));
                    } else if ("teaname".equals(item.getFieldName())) {
                        teaname = new String(item.getString("UTF-8"));
                    }
                    else if ("id".equals(item.getFieldName())) {
                        id = new String(item.getString("UTF-8"));
                    }

                    // BeanUtils.setFieldValue(user, item.getFieldName(), item
                    // .getString());

                } else {
                    String fileName = item.getName().substring(
                            item.getName().lastIndexOf(File.separator) + 1,
                            item.getName().length());
                    filename = fileName;
                    InputStream inputStream = item.getInputStream();
                    // InputStream inputStream = request.getInputStream();
                    OutputStream outputStream = new FileOutputStream(tempPath
                            + fileName);
                    while ((i = inputStream.read(data)) != -1) {
                        outputStream.write(data, 0, i);
                    }
                    inputStream.close();
                    outputStream.close();
                }
            }

        // userService.addUser(user);
        // fileService.addFile(file)
        request.setAttribute("id", id);
        request.setAttribute("work_id", work_id);
        request.setAttribute("teacher", teacher);
        request.setAttribute("teaname", teaname);
        request.setAttribute("filename", filename);
        request.getRequestDispatcher("/xm07/stuwork/success.jsp?id="+id+"&work_id=" + work_id + "&teacher=" + teacher + "&filename=" + filename + "&teaname=" + teaname).forward(request, response);
        // response.sendRedirect("success.jsp");
    }

}
