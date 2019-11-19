package com.bharath.location.entities;

import javax.persistence.*;

@Entity
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long idaddress;
    private String street;
    private String number;
    private String city;
    private int plz;
    private long fkcustomer;

    public long getIdaddress() {
        return idaddress;
    }

    public void setIdaddress(long idaddress) {
        this.idaddress = idaddress;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getPlz() {
        return plz;
    }

    public void setPlz(int plz) {
        this.plz = plz;
    }

    public long getFkCostumer() {
        return fkcustomer;
    }

    public void setFkCostumer(long fkCostumer) {
        this.fkcustomer = fkCostumer;
    }


    @Override
    public String toString() {
        return "Address{" +
                "id=" + idaddress +
                ", street='" + street + '\'' +
                ", number='" + number + '\'' +
                ", city='" + city + '\'' +
                ", plz=" + plz +
                ", fkcustomer=" + fkcustomer +
                '}';
    }
}
