package com.mobitel.mtktweb.entity;

public class SeatRequestEntity {
    private int numberOfSeats;
    private boolean needSequential;

    public void setNumberOfSeats(final int numberOfSeats) {
        this.numberOfSeats = numberOfSeats;
    }

    public int getNumberOfSeats() {
        return this.numberOfSeats;
    }

    public void setNeedSequential(final boolean needSequential) {
        this.needSequential = needSequential;
    }

    public boolean getNeedSequential() {
        return this.needSequential;
    }
}
