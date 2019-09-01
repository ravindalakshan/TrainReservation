package com.mobitel.mtktweb.controller;

import com.mobitel.mtktweb.entity.Station;
import com.mobitel.mtktweb.service.WebTicketService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @Autowired
	private WebTicketService webTicketService;

    @GetMapping("/")
	public String getIndex(Model model) {
       /* try {
            model.addAttribute("stations", webTicketService.getAllStation());
        } catch (Exception e) {
            return "error";
        } */

        Station stationOne = new Station();
        stationOne.setStationCode("code1");
        stationOne.setStationID("1");
        stationOne.setStationName("Colombo");

        Station stationTwo = new Station();
        stationTwo.setStationCode("code2");
        stationTwo.setStationID("2");
        stationTwo.setStationName("Kandy");

        Station[] stations = new Station[]{stationOne, stationTwo};

        model.addAttribute("stations",stations);

		return "index";
    }
    
    @GetMapping("/test/index")
	public String getTestIndex(Model model) {
        return "index";
    }
    
    @GetMapping("/test/dashboard")
	public String getTestDashboard(Model model) {
        return "dashboard";
    }
    
    @GetMapping("/test/reservation")
	public String getTestReservation(Model model) {
        return "reservation";
	}
}