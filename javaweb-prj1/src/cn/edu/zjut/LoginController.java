package cn.edu.zjut;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import cn.edu.zjut.model.*;
import cn.edu.zjut.dao.UserDAO;
public class LoginController extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        int type = Integer.parseInt(request.getParameter("type"));
        UserBean user=new UserBean();
        user.setUsername(username);
        user.setPassword(password);
        user.setType(type);
        if(checkUser(user)){
            request.setAttribute("USER", user);
            //请求转发
            RequestDispatcher dispatcher = request.getRequestDispatcher("/loginSuccess.jsp");
            dispatcher.forward(request, response);
        }else{
            //响应重定向，不加/指应用程序根目录
            response.sendRedirect("loginFailed.jsp");
        }
    }
    boolean checkUser(UserBean user){
        UserDAO ud=new UserDAO();
        if( ud.searchUser(user) ) {
            return true;
        }
        return false;
    }
}