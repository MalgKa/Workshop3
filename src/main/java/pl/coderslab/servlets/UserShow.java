package pl.coderslab.servlets;

import pl.coderslab.entity.UserDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/user/show")
public class UserShow extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"))  ;
        UserDao userDao = new UserDao();
        req.setAttribute("user", userDao.read(id));
        getServletContext().getRequestDispatcher("/users/showUser.jsp").forward(req,resp);
    }
}
