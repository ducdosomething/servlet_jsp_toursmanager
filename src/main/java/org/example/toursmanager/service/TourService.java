package org.example.toursmanager.service;

import org.example.toursmanager.model.Tour;

import java.util.List;

public interface TourService {
    List<Tour> showAll();

    void saveList(Tour tour);

    Tour searchById(int id);

    void update(int id, Tour tour);

    void delete(int id);
}
