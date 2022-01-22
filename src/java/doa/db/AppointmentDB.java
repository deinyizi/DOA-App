package doa.db;

import doa.bean.Appointment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;

public class AppointmentDB {

    public static boolean addAppointment(
            Connection connection, int patientID, int doctorID, LocalDateTime dateTime) throws SQLException {
        if (checkDateTime(connection, doctorID, dateTime)) { 
            final String QUERY
                    = "INSERT INTO APPOINTMENT (patientID, doctorID, AppointmentDateTime) "
                    + "VALUES(?, ?, ?)";

            try (PreparedStatement ps = connection.prepareStatement(QUERY)) {
                ps.setInt(1, patientID);
                ps.setInt(2, doctorID);
                ps.setTimestamp(3, Timestamp.valueOf(dateTime));
                ps.executeUpdate();
            }
            return true;
        } else {
            return false;
        }
    }
    
    public static boolean checkDateTime(Connection connection, int doctorID, LocalDateTime dateTime) {
        final String QUERY = "SELECT AppointmentDateTime FROM APPOINTMENT where doctorID = ?";
        
        try (PreparedStatement ps = connection.prepareStatement(QUERY)) {
            ps.setInt(1, doctorID);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    System.err.println("doctorID: " + doctorID);
                    LocalDateTime previousDateTime = rs.getTimestamp("AppointmentDateTime").toLocalDateTime();
                    System.err.println(previousDateTime.toString());
                    LocalDateTime tempDateTime = LocalDateTime.from(previousDateTime);
                    long hours = tempDateTime.until(dateTime, ChronoUnit.HOURS);
                    System.err.println("hours: " + hours);
                    if (hours >= 1) {
                        return true;
                    }
                } else {
                    return true;
                }
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        
        return false;
    }

    public static String getName(Connection connection, int patientID) {
        String name = null;
        final String QUERY = "SELECT Name from Patients WHERE PatientID = ?";
        
        try (PreparedStatement statement = connection.prepareStatement(QUERY)) {
            statement.setInt(1, patientID);
            try (ResultSet rs = statement.executeQuery()) {
                if (rs.next()) {
                    name = rs.getString("Name");
                }
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return name;
    }
    
    public static String getDoctorName(Connection connection, int doctorID) {
        String name = null;
        final String QUERY = "Select NAME From Doctors WHERE DoctorID = ?";
        
        try (PreparedStatement statement = connection.prepareStatement(QUERY)) {
            statement.setInt(1, doctorID);
            try (ResultSet rs = statement.executeQuery()) {
                if (rs.next()) {
                    name = rs.getString("Name");
                }
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return name;
    }
    
    public static String getDoctorSpeciality(Connection connection, int doctorID) {
        String doctorSpeciality = null;
        
        final String QUERY = "SELECT Speciality from Doctors WHERE doctorID = ?";
        
        try (PreparedStatement statement = connection.prepareStatement(QUERY)) {
            statement.setInt(1, doctorID);
            try (ResultSet rs = statement.executeQuery()) {
                if (rs.next()) {
                    doctorSpeciality = rs.getString("Speciality");
                }
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        
        return doctorSpeciality;
    }
    
    public static ArrayList<Appointment> getPatientAppointments(Connection connection, int patientID) {
        ArrayList<Appointment> appointments = new ArrayList<>();
        final String QUERY = "SELECT * FROM APPOINTMENT WHERE patientID = ?";
        
        try (PreparedStatement statement = connection.prepareStatement(QUERY)) {
            statement.setInt(1, patientID);
            
            try (ResultSet rs = statement.executeQuery()) {
                while (rs.next()) {
                    Appointment currentAppointment = new Appointment(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getTimestamp(4).toLocalDateTime());
                    String doctorName = getDoctorName(connection, rs.getInt(3));
                    String doctorSpeciality = getDoctorSpeciality(connection, rs.getInt(3));
                    currentAppointment.setDoctorSpeciality(doctorSpeciality);
                    currentAppointment.setDoctorName(doctorName);
                    appointments.add(currentAppointment);
                }
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        
        return appointments;
    }
    
    public static ArrayList<Appointment> getAppointments(Connection connection, int doctorID) {
        ArrayList<Appointment> appointments = new ArrayList<>();
        final String QUERY = "SELECT * FROM APPOINTMENT WHERE doctorID = ?";

        try (PreparedStatement statement = connection.prepareStatement(QUERY)) {
            statement.setInt(1, doctorID);
            try (ResultSet rs = statement.executeQuery()) {
                while (rs.next()) {
                    Appointment currentAppointment = new Appointment(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getTimestamp(4).toLocalDateTime());
                    String patientName = getName(connection, rs.getInt(2));
                    currentAppointment.setPatientName(patientName);
                    appointments.add(currentAppointment);
                }
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return appointments;
    }
}
