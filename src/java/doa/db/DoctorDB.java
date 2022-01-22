package doa.db;

import doa.bean.Doctor;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DoctorDB {

    public static void verifyDoctor(
            Connection connection, Doctor doctors) throws SQLException {
        final String QUERY
                = "SELECT * FROM doctors WHERE email = ? AND password = ?";
        try (PreparedStatement ps = connection.prepareStatement(QUERY)) {
            ps.setString(1, doctors.getEmail());
            ps.setString(2, doctors.getPassword());

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    doctors.setId(rs.getInt("doctorID"));
                    doctors.setName(rs.getString("name"));
                    doctors.setLastName(rs.getString("lastName"));
                    doctors.setEmail(rs.getString("email"));
                    doctors.setGender(rs.getString("gender"));
                    doctors.setPhone(rs.getString("phone"));
                    doctors.setDateOfBirth(rs.getDate("dateOfBirth").toLocalDate());
                    doctors.setAddress(rs.getString("address"));
                    doctors.setImageURL(rs.getString("imageURL"));
                    doctors.setExperience(rs.getInt("experience"));
                    doctors.setSpeciality(rs.getString("speciality"));

                    doctors.setVerified(true);
                }
            }
        } finally {
            connection.close();
        }
    }

    public static boolean isEmailAvailable(
            Connection connection, String email) throws SQLException {
        final String QUERY = "SELECT 1 FROM doctors WHERE email = ?";

        try (PreparedStatement ps = connection.prepareStatement(QUERY)) {
            ps.setString(1, email);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return false;
                } else {
                    return true;
                }
            }
        } finally {
            connection.close();
        }
    }

    public static void addDoctor(
            Connection connection, Doctor newDoctors) throws SQLException {
        final String QUERY
                = "INSERT INTO doctors (name,lastName, email,gender, phone,dateOfBirth,address, imageURL, experience, speciality, password) "
                + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement ps = connection.prepareStatement(QUERY)) {
            ps.setString(1, newDoctors.getName());
            ps.setString(2, newDoctors.getLastName());
            ps.setString(3, newDoctors.getEmail());
            ps.setString(4, newDoctors.getGender());
            ps.setString(5, newDoctors.getPhone());
            ps.setDate(6, Date.valueOf(newDoctors.getDateOfBirth()));
            ps.setString(7, newDoctors.getAddress());
            ps.setString(8, newDoctors.getImageURL());
            ps.setInt(9, newDoctors.getExperience());
            ps.setString(10, newDoctors.getSpeciality());
            ps.setString(11, newDoctors.getPassword());

            ps.executeUpdate();
        }
    }

    public static ArrayList<Doctor> getDoctorsList(Connection connection) throws SQLException {

        final String QUERY = "SELECT * from doctors";

        ArrayList<Doctor> doctorsList = new ArrayList<>();

        try (PreparedStatement statement = connection.prepareStatement(QUERY)) {
            try (ResultSet rs = statement.executeQuery()) {
                while (rs.next()) {
                    doctorsList.add(new Doctor(
                            rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getDate(7).toLocalDate(), rs.getString(8),
                            rs.getString(9), rs.getInt(10), rs.getString(11)));
                }
            }
        }
        return doctorsList;
    }

    public static int getDoctorLogin(
            Connection connection, int doctorId) throws SQLException {
        final String QUERY = "SELECT doctorID from doctors"
                + " WHERE doctorID = ?";

        try (PreparedStatement statement = connection.prepareStatement(QUERY)) {
            statement.setInt(1, doctorId);
            try (ResultSet rs = statement.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        }
        return 0;
    }
}
