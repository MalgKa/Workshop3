package pl.coderslab.servlets;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        UserDao userDao = new UserDao();
        User userToChange = userDao.read(id);
        req.setAttribute("user", userToChange);
        getServletContext().getRequestDispatcher("/users/editUser.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/plain");
        int id = Integer.parseInt(req.getParameter("id"));
        String userName = req.getParameter("userName");
        String email = req.getParameter("email");
        UserDao userDao = new UserDao();
        User userToChange = userDao.read(id);
        userToChange.setUserName(userName);
        userToChange.setEmail(email);
        userDao.update(userToChange);

        resp.sendRedirect("/user/list");
    }
}


