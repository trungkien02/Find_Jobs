package com.servlet;

import com.DB.DBconnect;
import com.dao.JobDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/delete")
public class DeleteJobServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));

            JobDAO dao = new JobDAO(DBconnect.getConn());
            boolean f = dao.deleteJobs(id);

            HttpSession session = req.getSession();

            if (f) {
                session.setAttribute("succMsg", "Job Delete Successfully");
                resp.sendRedirect("view_jobs.jsp");
            }else {
                session.setAttribute("succMsg", "Job Not Delete");
                resp.sendRedirect("view_jobs.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
