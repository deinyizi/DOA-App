package doa.bean;

import java.time.LocalDateTime;

public class Appointment {
    
    private int id;
    private int patientID;
    private int doctorID;
    private String patientName;
    private String doctorName;
    private String doctorSpeciality;
    private String appointmentDateTime;

    public Appointment(int id, int patientID, int doctorID, LocalDateTime appointmentDateTime) {
        this.id = id;
        this.patientID = patientID;
        this.doctorID = doctorID;
        setAppointmentDateTime(appointmentDateTime);
    }
    
    public void setDoctorSpeciality(String doctorSpeciality) {
        this.doctorSpeciality = doctorSpeciality;
    }
    
    public String getDoctorSpeciality() {
        return doctorSpeciality;
    }
    
    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }
        
    public String getDoctorName() {
        return doctorName;
    }
    
    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }
    
    public String getPatientName() {
        return patientName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPatientID() {
        return patientID;
    }

    public void setPatientID(int patientID) {
        this.patientID = patientID;
    }

    public int getDoctorID() {
        return doctorID;
    }

    public void setDoctorID(int doctorID) {
        this.doctorID = doctorID;
    }

    public String getAppointmentDateTime() {
        return appointmentDateTime;
    }

    public void setAppointmentDateTime(LocalDateTime appointmentDateTime) {
        String dateTime = appointmentDateTime.toString();
        String temp = dateTime.substring(0, 10) + "  " + dateTime.substring(11);
        this.appointmentDateTime = temp;
    }  
}
