package doa.bean;

import java.time.LocalDate;

public class Patients {

    private int id;
    private String name;
    private String lastName;
    private String email;
    private String gender;
    private String phone;
    private LocalDate dateOfBirth;
    private String password;
    private String address;
    private boolean verified;

    public Patients() {
    }

    public boolean isVerified() {
        return verified;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }

    public Patients(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public Patients(String name, String lastName, String email, String gender, String phone, LocalDate dateOfBirth, String password, String address) {
        this.name = name;
        this.lastName = lastName;
        this.email = email;
        this.gender = gender;
        this.phone = phone;
        this.dateOfBirth = dateOfBirth;
        this.password = password;
        this.address = address;
    }

    public Patients(int id, String name, String lastName, String email, String gender, String phone, LocalDate dateOfBirth, String password, String address) {
        this.id = id;
        this.name = name;
        this.lastName = lastName;
        this.email = email;
        this.gender = gender;
        this.phone = phone;
        this.dateOfBirth = dateOfBirth;
        this.password = password;
        this.address = address;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

}
