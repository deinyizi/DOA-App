package doa.bean;

import java.time.LocalDate;

public class Doctor {

    private int id;
    private String name;
    private String lastName;
    private String email;
    private String gender;
    private String phone;
    private LocalDate dateOfBirth;
    private String address;
    private String imageURL;
    private int experience;
    private String speciality;
    private String password;

    private boolean verified;

    public Doctor() {
    }

    public boolean isVerified() {
        return verified;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }

    public Doctor(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public Doctor(int id, String name, String lastName, String email, String gender, String phone, LocalDate dateOfBirth, String address, String imageURL, int experience, String speciality) {
        this.id = id;
        this.name = name;
        this.lastName = lastName;
        this.email = email;
        this.gender = gender;
        this.phone = phone;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
        this.imageURL = imageURL;
        this.experience = experience;
        this.speciality = speciality;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
}
