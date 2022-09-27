package model;

import java.util.Date;

public class Customer {
    private String name;
    private String dob;
    private String address;
    private String imageLink;

    public Customer() {
    }

    public Customer(String name, String dob, String address, String imageLink) {
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.imageLink = imageLink;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }
}
