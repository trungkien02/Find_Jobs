package com.servlet;

import com.DB.DBconnect;
import com.dao.UserDAO;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/update_profile")
public class UpdateUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String qua = req.getParameter("qua");
        String email = req.getParameter("email");
        String ps = req.getParameter("ps");

        UserDAO userDAO = new UserDAO(DBconnect.getConn());

        User u = new User();
        u.setId(id);
        u.setName(name);
        u.setQualification(qua);
        u.setPassword(ps);
        u.setEmail(email);


        boolean f = userDAO.updateUser(u);
        HttpSession session = req.getSession();
        if (f) {
            session.setAttribute("succMsg", "Update Successfully");
            resp.sendRedirect("home.jsp");
        } else {
            session.setAttribute("succMsg", "Update Failed");
            resp.sendRedirect("home.jsp");
        }
    }
}
