package doa.db;

import doa.bean.Patients;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PatientDB {

    public static void verifyPatient(
            Connection connection, Patients patients) throws SQLException {
        final String QUERY
                = "SELECT * FROM patients WHERE email = ? AND password = ?";
        try (PreparedStatement ps = connection.prepareStatement(QUERY)) {
            ps.setString(1, patients.getEmail());
            ps.setString(2, patients.getPassword());

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    patients.setId(rs.getInt("patientID"));
                    patients.setName(rs.getString("name"));
                    patients.setLastName(rs.getString("lastName"));
                    patients.setEmail(rs.getString("email"));
                    patients.setGender(rs.getString("gender"));
                    patients.setPhone(rs.getString("phone"));
                    patients.setDateOfBirth(rs.getDate("dateOfBirth").toLocalDate());
                    patients.setAddress(rs.getString("address"));

                    patients.setVerified(true);
                }
            }
        } finally {
            connection.close();
        }
    }

    public static boolean isEmailAvailable(
            Connection connection, String email) throws SQLException {
        final String QUERY = "SELECT 1 FROM patients WHERE email = ?";

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

    public static void addPatient(
            Connection connection, Patients newPatients) throws SQLException {
        final String QUERY
                = "INSERT INTO patients (name,lastName, email,gender, phone,dateOfBirth,address, password) "
                + "VALUES(?, ?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement ps = connection.prepareStatement(QUERY)) {
            ps.setString(1, newPatients.getName());
            ps.setString(2, newPatients.getLastName());
            ps.setString(3, newPatients.getEmail());
            ps.setString(4, newPatients.getGender());
            ps.setString(5, newPatients.getPhone());
            ps.setDate(6, Date.valueOf(newPatients.getDateOfBirth()));
            ps.setString(7, newPatients.getAddress());
            ps.setString(8, newPatients.getPassword());

            ps.executeUpdate();
        }
    }

    public static int getPatientLogin(
            Connection connection, int patientId) throws SQLException {
        final String QUERY = "SELECT patientID from patients"
                + " WHERE patientID = ?";

        try (PreparedStatement statement = connection.prepareStatement(QUERY)) {
            statement.setInt(1, patientId);
            try (ResultSet rs = statement.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        }
        return 0;
    }
}
