package pl.coderslab.servlets;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/user/add")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/addUser.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/plain");
        String userName = req.getParameter("userName");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        UserDao userDao = new UserDao();
        User userToAdd =new User();
        userToAdd.setUserName(userName);
        userToAdd.setEmail(email);
        userToAdd.setPassword(password);
        userDao.create(userToAdd);

        resp.sendRedirect("/user/list");
    }
}
