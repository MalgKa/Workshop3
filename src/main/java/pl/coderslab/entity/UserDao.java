package pl.coderslab.entity;

import org.mindrot.jbcrypt.BCrypt;
import pl.coderslab.utils.DbUtil;
import java.sql.*;
import java.util.Arrays;

public class UserDao {
    private static final String CREATE_USER_QUERY =
            "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";

    private static final String UPDATE_USER_QUERY =
            "update  users set username=?, email=?, password=? where id =?";

    private static final String SELECT_USER_QUERY =
            "select * from users where id =?";

    private static final String DELETE_USER_QUERY =
            "delete from users where id =?";

    private static final String SELECT_ALL_USER_QUERY =
            "select * from users";

    private static final String DELETE_ALL_USERS_QUERY = "delete from users";

    public String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public User create(User user) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement statement = conn.prepareStatement(CREATE_USER_QUERY, PreparedStatement.RETURN_GENERATED_KEYS);
            statement.setString(1, user.getUserName());
            statement.setString(2, user.getEmail());
            statement.setString(3, hashPassword(user.getPassword()));
            statement.executeUpdate();

            ResultSet rs = statement.getGeneratedKeys();
            if (rs.next()) {
                user.setId(rs.getInt(1));
            }

            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }

    public User read(int userId) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement statement = conn.prepareStatement(SELECT_USER_QUERY);
            statement.setInt(1, userId);

            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                User user = new User();
                user.setId(rs.getInt(1));
                user.setUserName(rs.getString(3));
                user.setEmail(rs.getString(2));
                return user;
            } else {
                throw new NullPointerException("this id doesn't exist");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public void update(User user) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement statement = conn.prepareStatement(UPDATE_USER_QUERY);
            statement.setString(1, user.getUserName());
            statement.setString(2, user.getEmail());
            statement.setString(3, hashPassword(user.getPassword()));
            statement.setInt(4, user.getId());

            statement.executeUpdate();


        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }


    public void delete(int userId) {

        try (Connection conn = DbUtil.getConnection()) {

            PreparedStatement statement = conn.prepareStatement(DELETE_USER_QUERY);
            statement.setInt(1, userId);
            statement.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();

        }
    }

    public User[] findAll() {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement statement = conn.prepareStatement(SELECT_ALL_USER_QUERY);
            ResultSet rs = statement.executeQuery();
            User[] usersTab = new User[0];
            while (rs.next()) {
                User tempUser = new User();
                tempUser.setId(rs.getInt(1));
                tempUser.setUserName(rs.getString(3));
                tempUser.setEmail(rs.getString(2));
                tempUser.setPassword(rs.getString(4));
                usersTab = Arrays.copyOf(usersTab, usersTab.length+1);
                usersTab[usersTab.length-1] = tempUser;
            }
            return usersTab;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }
    public void deleteAll(){
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement statement = conn.prepareStatement(DELETE_ALL_USERS_QUERY);
            statement.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();

        }
    }


}

