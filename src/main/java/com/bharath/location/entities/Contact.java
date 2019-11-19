package com.bharath.location.entities;

import javax.persistence.*;

@Entity
public class Contact {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long idcontact;
    @Column(name = "businessname")
    private String businessname;
    private String value;
    private long fkcustomer;
    @Enumerated(EnumType.STRING)
    private Type type;
    @Enumerated(EnumType.STRING)
    private Sort sort;


    public long getIdcontact() {
        return idcontact;
    }

    public void setIdcontact(long idcontact) {
        this.idcontact = idcontact;
    }

    public String getBusinessname() {
        return businessname;
    }

    public void setBusinessname(String businessname) {
        this.businessname = businessname;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public long getFkcostumer() {
        return fkcustomer;
    }

    public void setFkcostumer(long fkcostumer) {
        this.fkcustomer = fkcostumer;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Sort getSort() {
        return sort;
    }

    public void setSort(Sort sort) {
        this.sort = sort;
    }

    @Override
    public String toString() {
        return "Contact{" +
                "id=" + idcontact +
                ", businessname='" + businessname + '\'' +
                ", value='" + value + '\'' +
                ", fkcustomer=" + fkcustomer +
                ", type=" + type +
                ", sort=" + sort +
                '}';
    }
}
