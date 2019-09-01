package com.mobitel.mtktweb.entity;

public class Station {
    private String stationName;
    private String stationCode;
    private String stationID;

    public String getStationName() {
        return stationName;
    }

    public void setStationName(String stationName) {
        this.stationName = stationName;
    }

    public String getStationCode() {
        return stationCode;
    }

    public void setStationCode(String stationCode) {
        this.stationCode = stationCode;
    }

    public String getStationID() {
        return stationID;
    }

    public void setStationID(String stationID) {
        this.stationID = stationID;
    }

    @Override
    public String toString() {
        final StringBuilder strBuilder = new StringBuilder();

        strBuilder.append("Station ID:");
        strBuilder.append(this.stationID);
        strBuilder.append("\n");
        strBuilder.append("Station Name:");
        strBuilder.append(this.stationName);
        strBuilder.append("\n");
        strBuilder.append("Station Code:");
        strBuilder.append(this.stationCode);
        strBuilder.append("\n");

        return strBuilder.toString();
    }
}
