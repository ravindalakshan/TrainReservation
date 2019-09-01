package com.mobitel.mtktweb.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import com.mobitel.mtktweb.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.mobitel.mtktweb.service.WebTicketService;

@Controller
public class DashBoardController {
	// @PostMapping("/dashboard")
	// public String loadDashBoard(SearchInfoEntity searchInfo, Model model) {
	// // model.addAttribute("searchInfo", searchInfo);
	// String info = String.format("Search Submission: From = %s, To = %s, Date = %s
	// , No_of_passenger = %d ",
	// searchInfo.getFromSt(), searchInfo.getToSt(), searchInfo.getDepDate(),
	// searchInfo.getNoOfUsers());
	// RestTemplate restTemplate = new RestTemplate();
	// // Map<String, String> vars = new HashMap<String, String>();
	// // vars.put("fromStCode", searchInfo.getFromSt());
	// // vars.put("toStCode", searchInfo.getToSt());
	// // vars.put("departureDate", searchInfo.getDepDate());
	// SearchCriteria sc = new SearchCriteria();
	// System.out.println("|MTKTWEB Dashboard POST CNTRL | " + info);
	// try {
	// sc.setFromStCode(searchInfo.getFromSt());
	// sc.setToStCode(searchInfo.getToSt());
	// sc.setDepartureDate(searchInfo.getDepDate());
	// ResponseEntity<MTRWebServiceLevelResponse> result = restTemplate
	// .postForEntity("http://localhost:8080/MTRWebWS/home/trains", sc,
	// MTRWebServiceLevelResponse.class);
	// System.out.println("RESULT | " + result.getBody().getObj().toString());
	// model.addAttribute("josnResp", result.getBody().getObj().toString());
	//
	// } catch (Exception e) {
	// e.printStackTrace();
	// }
	// return "dashboard";
	// }
	@Autowired
	private WebTicketService webTicketService;

	@PostMapping("/dashboard")
	public String loadDashBoard(SearchInfoEntity searchInfo, Model model) {
		System.out.println("------------post-----------------");
		model.addAttribute("searchInfo", searchInfo);
		String info = String.format("Search Submission: From = %s, To = %s, Date = %s", searchInfo.getFromSt(),
				searchInfo.getToSt(), searchInfo.getDepDate());
//		searchInfo.setDepDate("28-FEB-2018");
		// SearchResponse searchResponse = null;
		// try {
		// 	searchResponse = webTicketService.geSearchResult(searchInfo);
		// } catch (Exception e) {

		// }
		// List<TrainRow> trainRowForward = trinRowMApper(searchResponse.getObj().getForwardTrain());
		// List<TrainRow> trainRowReturn = trinRowMApper(searchResponse.getObj().getReturnTrain());

		System.out.println("-----set value-----");

		// model.addAttribute("trainRowForward", trainRowForward);
		// model.addAttribute("trainRowReturn", trainRowReturn);

		Station stationOne = new Station();
		stationOne.setStationCode("code1");
		stationOne.setStationID("1");
		stationOne.setStationName("Colombo");

		Station stationTwo = new Station();
		stationTwo.setStationCode("code2");
		stationTwo.setStationID("2");
		stationTwo.setStationName("Kandy");

		Station[] stations = new Station[]{stationOne, stationTwo};

		model.addAttribute("stations", stations);
		model.addAttribute("from", searchInfo.getFromSt());
		model.addAttribute("to", searchInfo.getToSt());
		model.addAttribute("date", searchInfo.getDepDate());
		model.addAttribute("passengersCount", searchInfo.getNoOfUsers());
		model.addAttribute("isReturn", searchInfo.isReturn());
		model.addAttribute("returnDate", searchInfo.getRetDate());
		System.out.println("|MTKTWEB Dashboard POST CNTRL | " + info);
		return "dashboard";
	}

	private List<TrainRow> trinRowMApper(List<MTRTrain> TrainList) {
		ArrayList<TrainRow> trainRows = new ArrayList<TrainRow>();
		for (int i = 0; i < TrainList.size(); i++) {
			MTRTrain mtrTrain = TrainList.get(i);
			ArrayList<MTRClass> mtrClasses = (ArrayList<MTRClass>) mtrTrain.getClassList();
			for (int j = 0; j < mtrClasses.size(); j++) {
				MTRClass mtrClass = mtrClasses.get(j);
				TrainRow trainRow = new TrainRow();
				trainRow.setClassCode(mtrClass.getClassABBR());
				trainRow.setAvailable(mtrClass.getAvailableSeats() + "");
				if (mtrClass.getClassCode() == 6) {
					trainRow.setPrice("600.00");
				} else if (mtrClass.getClassCode() == 8) {
					trainRow.setPrice("400.00");
				} else if (mtrClass.getClassCode() == 1) {
					trainRow.setPrice("1200.00");
				} else {
					trainRow.setPrice("1200.00");
				}
				// trainRow.setdTime(mtrTrain.getDepTime());
				// trainRow.setaTime(mtrTrain.getArrivalTime());

				trainRow.setSourceFromTime(mtrTrain.getDepTime());
				trainRow.setEndToTime(mtrTrain.getArrivalTime());

				trainRow.setName(mtrTrain.getTrainName());
				trainRow.setCode(mtrTrain.getTrainCode() + "");
				trainRow.setFromStation(mtrTrain.getStartPoint());
				trainRow.setToStation(mtrTrain.getEndPoint());

//				trainRow.setSourceFromTime(mtrTrain.getSourceFromTime());
//				trainRow.setEndToTime(mtrTrain.getSourceToTime());

				trainRow.setdTime(mtrTrain.getSourceFromTime());
				trainRow.setaTime(mtrTrain.getSourceToTime());

				trainRows.add(trainRow);
			}
		}
		return trainRows;
	}

	@GetMapping("/dashboard")
	public void redirectDashBoard(final HttpServletResponse response) throws IOException {
		response.sendRedirect("index");
	}
}
