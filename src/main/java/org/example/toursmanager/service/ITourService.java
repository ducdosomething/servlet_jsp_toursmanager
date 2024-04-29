package org.example.toursmanager.service;

import org.example.toursmanager.model.Tour;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ITourService implements TourService {

    private static Map<Integer, Tour> tours;

    static {
        tours = new HashMap<>();
        tours.put(1, new Tour(1, "HUE", "Hue", 300000, "img/hue.jpg"));
        tours.put(2, new Tour(2, "DN", "Da Nang", 500000, "img/danang.jpg"));
        tours.put(3, new Tour(3, "HN", "Ha Noi", 600000, "img/hanoi.jpg"));
        tours.put(4, new Tour(4, "SG", "Sai Gon", 600000, "img/saigon.jpg"));
    }
    @Override
    public List<Tour> showAll() {
        return new ArrayList<>(tours.values());
    }

    @Override
    public void saveList(Tour tour) {
        tours.put(tour.getId(), tour);
    }

    @Override
    public Tour searchById(int id) {
        return tours.get(id);
    }

    @Override
    public void update(int id, Tour tour) {
        tours.put(id, tour);
    }

    @Override
    public void delete(int id) {
        tours.remove(id);
    }
}
