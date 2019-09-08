/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.services.admin;

import bugfix.beans.admin.AddSecQuesBean;
import bugfix.beans.common.FeedbackmasterBean;
import bugfix.beans.common.SignUpBean;
import bugfix.beans.common.UsermasterBean;
import bugfix.services.common.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sahilsood
 */
public class UserServices {

    /**
     *
     * @return
     */
    public List<UsermasterBean> getAllUsers() {
        List<UsermasterBean> lstUsers = new ArrayList<>();
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select usermaster.user_id, userdetail.name, userdetail.mobile, userdetail.email, usermaster.user_status from userdetail, usermaster where userdetail.user_id=usermaster.user_id and user_type='user';");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                UsermasterBean objBean = new UsermasterBean();
                objBean.setUserId(rs.getInt("user_id"));
                objBean.setName(rs.getString("name"));
                objBean.setMobile(rs.getString("mobile"));
                objBean.setEmail(rs.getString("email"));
                objBean.setUserStatus(rs.getString("user_status"));
                lstUsers.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("In getAllUsers():" + e);
        }
        return lstUsers;
    }

    public List<UsermasterBean> getAllEmployees() {
        List<UsermasterBean> lstUsers = new ArrayList<>();
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select usermaster.user_id, userdetail.name, userdetail.mobile, userdetail.email, usermaster.user_status from userdetail, usermaster where userdetail.user_id=usermaster.user_id and user_type='employee';");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                UsermasterBean objBean = new UsermasterBean();
                objBean.setUserId(rs.getInt("user_id"));
                objBean.setName(rs.getString("name"));
                objBean.setMobile(rs.getString("mobile"));
                objBean.setEmail(rs.getString("email"));
                objBean.setUserStatus(rs.getString("user_status"));
                lstUsers.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("In getAllUsers():" + e);
        }
        return lstUsers;
    }

    public List<FeedbackmasterBean> getAllFeedbacks() {
        List<FeedbackmasterBean> lstFeedbacks = new ArrayList<>();
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select usermaster.user_id, feedbackmaster.feedback, usermaster.username, feedbackmaster.feedback_time from usermaster, feedbackmaster where feedbackmaster.user_id=usermaster.user_id;");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                FeedbackmasterBean objBean = new FeedbackmasterBean();
                objBean.setUserId(rs.getInt("user_id"));
                objBean.setFeedback(rs.getString("feedback"));
                objBean.setUsername(rs.getString("username"));
                objBean.setFeedbackTime(rs.getDate("feedback_time"));
                lstFeedbacks.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("In getAllFeedbacks():" + e);
        }
        return lstFeedbacks;
    }

    public String addSecQues(AddSecQuesBean objBean) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("insert into securitymaster(question,status) values(?,?)");) {
            pstmt.setString(1, objBean.getTxtQuestion());
            pstmt.setInt(2, Integer.parseInt(objBean.getRbStatus()));
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "Addition Successfull";
            }
        } catch (Exception e) {
            System.out.println("Error in addSecQues()" + e);
        }
        return result;
    }

    public String changeSQStatusToInactive(int securityQuestionId) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("update securitymaster set status=0 where security_question_id='" + securityQuestionId + "'");) {
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "status changed to inactive";
            }
        } catch (Exception e) {
            System.out.println("Error in changeSQStatusToInactive()" + e);
        }
        return result;
    }

    public String changeSQStatusToActive(int securityQuestionId) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("update securitymaster set status=1 where security_question_id='" + securityQuestionId + "'");) {
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "status changed to Active";
            }
        } catch (Exception e) {
            System.out.println("Error in changeSQStatusToActive()" + e);
        }
        return result;
    }

    public String addEditEmp(int userId, String userType) {
        String result = "failed";
        if (userType.equals("user")) {
            userType = "employee";
        } else {
            userType = "user";
        }
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("update usermaster set user_type='" + userType + "' where user_id='" + userId + "'");) {
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "User Employed";
            }
        } catch (Exception e) {
            System.out.println("Error in addEditEmp()" + e);
        }
        return result;
    }

        public String updateUser(SignUpBean obj) {
        String result2 = "Failed to Update User";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = ConnectDB.connect();
            pstmt = conn.prepareStatement("update usermaster set user_status=? where user_id=?");
            pstmt.setString(1, obj.getRbUserStatus());
            pstmt.setInt(2, obj.getTxtUserId());
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result2 = "User Updated Successfully";
            }

        } catch (Exception e) {
            System.out.println("updateUser():" + e);
        }
        return result2;
    }
}
