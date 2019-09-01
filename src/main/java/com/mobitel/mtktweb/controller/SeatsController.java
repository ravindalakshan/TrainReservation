package com.mobitel.mtktweb.controller;

import com.mobitel.mtktweb.entity.SeatRequestEntity;
import com.mobitel.mtktweb.service.WebTicketService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SeatsController {
	private static final String SEATS_AVAILABLE_KEY = "yes";

	@Autowired
	private WebTicketService webTicketService;

	@GetMapping("/seats")
	public String loadSeats(@RequestParam(defaultValue = "0") String seatCount, Model model) {
		model.addAttribute("seatCount", seatCount);
		model.addAttribute("seat_error", false);
		return "seats";
	}

	@PostMapping("/seats")
	public String checkAvailability(SeatRequestEntity seatRequestEntity, Model model) {
		// final String isAvailable = webTicketService.checkSeatsAvailability(seatRequestEntity);

		// if (SEATS_AVAILABLE_KEY.equalsIgnoreCase(isAvailable)) {
		// 	return "seats";
		// } else {
			model.addAttribute("seat_error", true);
			return "seats";
		// }
	}
}
