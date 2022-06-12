package com.servlet;

import com.DB.DBconnect;
import com.dao.JobDAO;
import com.entity.Jobs;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/update")
public class UpdateJobServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String title = req.getParameter("title");
            String location = req.getParameter("location");
            String category = req.getParameter("category");
            String status = req.getParameter("status");
            String desc = req.getParameter("desc");

            Jobs j = new Jobs();
            j.setId(id);
            j.setTitle(title);
            j.setDescription(desc);
            j.setLocation(location);
            j.setCategory(category);
            j.setStatus(status);

            HttpSession session = req.getSession();

            JobDAO dao = new JobDAO(DBconnect.getConn());
            boolean f = dao.updateJob(j);
            if (f) {
                session.setAttribute("succMsg", "Job Update Successfully");
                resp.sendRedirect("view_jobs.jsp");
            }else {
                session.setAttribute("succMsg", "Job Not Update");
                resp.sendRedirect("view_jobs.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
