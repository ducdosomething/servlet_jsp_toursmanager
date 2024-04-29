package org.example.toursmanager.controller;

import org.example.toursmanager.model.Tour;
import org.example.toursmanager.service.ITourService;
import org.example.toursmanager.service.TourService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TourServlet", urlPatterns = "/tours")
public class TourServlet extends HttpServlet {

    private final TourService tourService = new ITourService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                createTour(req, resp);
                break;
            case "edit":
                updateTour(req, resp);
                break;
            case "delete":
                deleteTour(req, resp);
                break;
            default:
                break;
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(req, resp);
                break;
            case "edit":
                showEditForm(req, resp);
                break;
            case "delete":
                showDeleteForm(req, resp);
                break;
            case "view":
                viewTour(req, resp);
                break;
            default:
                listTours(req, resp);
                break;
        }
    }

    private void viewTour(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Tour tour = this.tourService.searchById(id);
        RequestDispatcher dispatcher;

        if (tour == null) {
            dispatcher = req.getRequestDispatcher("view/error-404.jsp");
        } else {
            req.setAttribute("tour", tour);
            dispatcher = req.getRequestDispatcher("view/view.jsp");
        }

        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listTours(HttpServletRequest req, HttpServletResponse resp) {
        List<Tour> tours = this.tourService.showAll();
        req.setAttribute("tours", tours);

        RequestDispatcher dispatcher;
        dispatcher = req.getRequestDispatcher("view/listTours.jsp");

        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createTour(HttpServletRequest req, HttpServletResponse resp) {

        int id = Integer.parseInt(req.getParameter("id"));
        String code = req.getParameter("code");
        String destination = req.getParameter("destination");
        double price = Double.parseDouble(req.getParameter("price"));
        String img = req.getParameter("img");

        Tour tour = new Tour(id, code, destination, price, img);
        this.tourService.saveList(tour);
        RequestDispatcher dispatcher;
        dispatcher = req.getRequestDispatcher("view/create.jsp");
        req.setAttribute("message", "New tour was created");

        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher = req.getRequestDispatcher("view/create.jsp");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateTour(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        String code = req.getParameter("code");
        String destination = req.getParameter("destination");
        Double price = Double.parseDouble(req.getParameter("price"));

        Tour tour = this.tourService.searchById(id);
        RequestDispatcher dispatcher;
        if (tour == null) {
            dispatcher = req.getRequestDispatcher("error-404.jsp");
        } else {
            tour.setId(id);
            tour.setCode(code);
            tour.setDestination(destination);
            this.tourService.update(id, tour);
            req.setAttribute("tour", tour);
            req.setAttribute("message", "Tour information was updated");
            dispatcher = req.getRequestDispatcher("view/edit.jsp");
        }
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Tour tour = this.tourService.searchById(id);
        RequestDispatcher dispatcher;
        if (tour == null) {
            dispatcher = req.getRequestDispatcher("error-404.jsp");
        } else {
            req.setAttribute("tour", tour);
            dispatcher = req.getRequestDispatcher("view/edit.jsp");
        }
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteTour(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Tour tour = this.tourService.searchById(id);
        RequestDispatcher dispatcher;
        if (tour == null) {
            dispatcher = req.getRequestDispatcher("error-404.jsp");
        } else {
            this.tourService.delete(id);
            try {
                resp.sendRedirect("/tours");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void showDeleteForm(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Tour tour = this.tourService.searchById(id);
        RequestDispatcher dispatcher;
        if (tour == null) {
            dispatcher = req.getRequestDispatcher("error-404.jsp");
        } else {
            req.setAttribute("tour", tour);
            dispatcher = req.getRequestDispatcher("view/delete.jsp");
        }
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
