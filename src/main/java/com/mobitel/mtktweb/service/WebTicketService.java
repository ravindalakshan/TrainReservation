package com.mobitel.mtktweb.service;

import com.mobitel.mtktweb.entity.SearchInfoEntity;
import com.mobitel.mtktweb.entity.SearchResponse;
import com.mobitel.mtktweb.entity.SeatRequestEntity;
import com.mobitel.mtktweb.entity.Station;

import java.util.List;

public interface WebTicketService {

	public Station[] getAllStation();

	public List<Station> geStationByFrom(String fromStation);

	public SearchResponse geSearchResult(SearchInfoEntity searchInfo);

	public String checkSeatsAvailability(SeatRequestEntity seatRequestEntity);

	static class APIEndPoints {
		public static final String HOME_URL = "https://apps.mobitel.lk/MTRWebWS/home";
	}
}
