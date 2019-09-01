package com.mobitel.mtktweb.service.impl;

import java.util.Arrays;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.mobitel.mtktweb.entity.GenericEntity;
import com.mobitel.mtktweb.entity.SearchInfoEntity;
import com.mobitel.mtktweb.entity.SearchResponse;
import com.mobitel.mtktweb.entity.SeatRequestEntity;
import com.mobitel.mtktweb.entity.Station;
import com.mobitel.mtktweb.service.WebTicketService;

@Service

public class WebTicketServiceImpl implements WebTicketService {
	@Autowired
	private Environment environment;

	@Override
	public Station[] getAllStation() {
		System.out.println("===========getAllStation========");
		// List<Station> stationList = webTicketDao.getStationList();

		// return stationList;

		RestTemplate restTemplate = new RestTemplate();

		// String(environment.getProperty(Constant.FROM_STATIONS)));
		ResponseEntity<GenericEntity> response;
		try {
			response = restTemplate.getForEntity(APIEndPoints.HOME_URL, GenericEntity.class);
		} catch (Exception e) {
			// log it
			throw e;
		}

		// if(response.getStatusCode()==200){
		return (Station[]) response.getBody().getObj();
		// }else{
		// return null
		// }

	}

	@Override
	public List<Station> geStationByFrom(String fromStation) {

		// List<Station> stationList = webTicketDao.getRelevantStationList(fromStation);
		//
		// return stationList;
		RestTemplate restTemplate = new RestTemplate();
		System.out.println("**********getRelevantStationList************");
		// String url =new
		// String(environment.getProperty(Constant.TO_STATIONS))+fromStation;
		String url = "http://localhost:8080/MTRWebWS/home/to/" + fromStation;

		ResponseEntity<Station[]> response = restTemplate.getForEntity(url, Station[].class);

		System.out.println(response.toString());
		System.out.println(response.getHeaders());
		System.out.println(response.getStatusCode());

		// if(response.getStatusCode()==200){
		return Arrays.asList(response.getBody());
		// }else{
		// return null
		// }

	}

	@Override
	public SearchResponse geSearchResult(SearchInfoEntity searchInfo) {

		System.out.println("*************fromStCode****************" + searchInfo.getFromSt());
		String walletBalanceUrl = "http://localhost:8080/MTRWebWS/home/trains";
//		String walletBalanceUrl = "http://testapps.mobitel.lk/MTRWebWS/home/trains";

		HttpHeaders httpHeaders = new HttpHeaders();
		httpHeaders.set("Content-Type", "application/json");

		System.out.println("*************fromStCode****************" + searchInfo.getFromSt());
		System.out.println("*************toStCode****************" + searchInfo.getToSt());
		System.out.println("*************departureDate****************" + searchInfo.getDepDate());
		System.out.println("*************isReturn****************" + searchInfo.isReturn());
		System.out.println("*************returnDate****************" + searchInfo.getRetDate());

		/*
		 * JSONObject json = new JSONObject(); json.put("fromStCode",
		 * searchInfo.getFromSt()); json.put("toStCode", searchInfo.getToSt());
		 * json.put("departureDate", searchInfo.getDepDate()); json.put("isReturn",
		 * searchInfo.getIsReturn()); json.put("returnDate", searchInfo.getRetDate());
		 */
		try {
			JSONObject json = new JSONObject();
			json.put("fromStCode", searchInfo.getFromSt());
			json.put("toStCode", searchInfo.getToSt());
			json.put("departureDate", searchInfo.getDepDate());
			json.put("isReturn", "false");
			json.put("returnDate", searchInfo.getRetDate());
			System.out.println("| json | " + json.toString());
			HttpEntity<String> httpEntity = new HttpEntity<String>(json.toString(), httpHeaders);

			RestTemplate restTemplate = new RestTemplate();
			SearchResponse response = restTemplate.postForObject(walletBalanceUrl, httpEntity, SearchResponse.class);

			System.out.println(response.getObj().getForwardTrain().size());
			System.out.println(response.getObj().getReturnTrain().size());
			return response;
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("-----end-------");
		return null;

	}

	@Override
	public String checkSeatsAvailability(SeatRequestEntity seatRequestEntity) {
		final String seatCheckUrl = "http://localhost:8080/MTRWebWS/home/seats/check";

		final HttpHeaders httpHeaders = new HttpHeaders();
		httpHeaders.set("Content-Type", "application/json");

		try {
			final JSONObject json = new JSONObject();
			json.put("numberOfSeats", seatRequestEntity.getNumberOfSeats());
			json.put("needSequential", seatRequestEntity.getNeedSequential());
			final HttpEntity<String> httpEntity = new HttpEntity<String>(json.toString(), httpHeaders);

			final RestTemplate restTemplate = new RestTemplate();
			final String response = restTemplate.postForObject(seatCheckUrl, httpEntity, String.class);

			return response;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
}
