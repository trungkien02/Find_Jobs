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


@WebServlet("/add_job")
public class AddPost extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String title = req.getParameter("title");
            String location = req.getParameter("location");
            String category = req.getParameter("category");
            String status = req.getParameter("status");
            String desc = req.getParameter("desc");

            Jobs j = new Jobs();
            j.setTitle(title);
            j.setDescription(desc);
            j.setLocation(location);
            j.setStatus(status);
            j.setCategory(category);

            HttpSession session = req.getSession();

            JobDAO dao = new JobDAO(DBconnect.getConn());
            boolean f = dao.addJob(j);
            if (f) {
                session.setAttribute("succMsg", "Job Added Successfully");
                resp.sendRedirect("add_job.jsp");
            }else {
                session.setAttribute("succMsg", "Job Not Added");
                resp.sendRedirect("add_job.jsp");
            }

        }
        catch (Exception e){
            e.printStackTrace();
        }

    }

}