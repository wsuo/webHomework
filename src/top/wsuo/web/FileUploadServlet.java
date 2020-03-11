package top.wsuo.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "FileUploadServlet", urlPatterns = "/fileUpload")
@MultipartConfig(location = "D:\\", fileSizeThreshold = 1024)
public class FileUploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //返回web应用程序文档根目录，即本地项目目录
        String path = this.getServletContext().getRealPath("/");
        String username = request.getParameter("username");
        Part part = request.getPart("filename");
        String message = "";

        //异常捕捉,如果文件太大
        if (part.getSize() > 1024 * 1024) {
            part.delete();
            message = "文件大小不能超过1MB";
        } else {
            path += "\\user\\" + username;
            //创建文件夹
            File file = new File(path);
            if (!file.exists()) {
                file.mkdirs();
            }
            //从头部信息获取文件名
            String h = part.getHeader("content-disposition");
            String fname = getFileName(h);
            //保存文件到本地
            part.write(path + "\\" + fname);
            message = "文件上传成功";
        }
        request.setAttribute("message", message);
        request.getRequestDispatcher("/fileUpload.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    /**
     * 根据请求头解析出文件名
     * 请求头的格式：火狐和google浏览器下：form-data; name="file"; filename="snmp4j--api.zip"
     * IE浏览器下：form-data; name="file"; filename="D:\snmp4j--api.zip"
     * @param header 请求头
     * @return 文件名
     */
    public String getFileName(String header) {
        /**
         * String[] tempArr1 = header.split(";");
         * 代码执行完之后，在不同的浏览器下，tempArr1数组里面的内容稍有区别:
         * 火狐或者google浏览器下：tempArr1={form-data,name="file",filename="snmp4j--api.zip"}
         * IE浏览器下：tempArr1={form-data,name="file",filename="D:\snmp4j--api.zip"}
         */
        String[] tempArr1 = header.split(";");
        /**
         *火狐或者google浏览器下：tempArr2={filename,"snmp4j--api.zip"}
         *IE浏览器下：tempArr2={filename,"D:\snmp4j--api.zip"}
         */
        String[] tempArr2 = tempArr1[2].split("=");
        //获取文件名，兼容各种浏览器的写法
        String fileName = tempArr2[1].substring(tempArr2[1].lastIndexOf("\\")+1).replaceAll("\"", "");
        return fileName;
    }
}
