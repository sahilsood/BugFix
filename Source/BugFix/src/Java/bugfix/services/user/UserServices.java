/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.services.user;

import bugfix.beans.common.SignUpBean;
import bugfix.beans.user.AddFeedbackBean;
import bugfix.beans.user.AddRequestBean;
import bugfix.services.common.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author sahilsood
 */
public class UserServices {

    public String addRequest(AddRequestBean objBean) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();) {
            PreparedStatement pstmt = conn.prepareStatement("insert into requestmaster(request_title,description,request_date,user_id) values(?,?,sysdate(),?);");
            pstmt.setString(1, objBean.getTxtRequestTitle());
            pstmt.setString(2, objBean.getTaDescription());
            pstmt.setInt(3, objBean.getTxtUserId());
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "Request Posted";
            }
        } catch (Exception e) {
            System.out.println("Error in addRequest()" + e);
        }
        return result;
    }

    public String addFeedback(AddFeedbackBean objBean) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();) {
            PreparedStatement pstmt = conn.prepareStatement("insert into feedbackmaster(feedback,feedback_time,user_id) values(?,sysdate(),?);");
            pstmt.setString(1, objBean.getTaFeedback());
            pstmt.setInt(2, objBean.getTxtUserId());
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "Feedback Posted";
            }
        } catch (Exception e) {
            System.out.println("Error in addFeedback()" + e);
        }
        return result;
    }

    public String signUp(SignUpBean obj) {
        String result = "Failed to SignUp";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = ConnectDB.connect();
            pstmt = conn.prepareStatement("insert into usermaster(username,password,user_type,user_status) values(?,?,?,?)");
            pstmt.setString(1, obj.getTxtUsername());
            pstmt.setString(2, obj.getTxtPassword());
            pstmt.setString(3, "user");
            pstmt.setString(4, "active");

            int i = pstmt.executeUpdate();
            if (i > 0) {
                pstmt = conn.prepareStatement("insert into userdetail(user_id, name,gender,dob,phone,mobile,email,address,country_id,state_id,city_id,pin_code) values((select max(user_id) from usermaster),?,?,?,?,?,?,?,?,?,?,?)");
                pstmt.setString(1, obj.getTxtName());
                pstmt.setString(2, obj.getRbGender());
                pstmt.setString(3, obj.getTxtDOB());
                pstmt.setString(4, obj.getTxtPhone());
                pstmt.setString(5, obj.getTxtMobile());
                pstmt.setString(6, obj.getTxtEmail());
                pstmt.setString(7, obj.getTaAddress());
                pstmt.setString(8, obj.getDdlCountry());
                pstmt.setString(9, obj.getDdlState());
                pstmt.setString(10, obj.getDdlCity());
                pstmt.setString(11, obj.getTxtPinCode());
                
                int j = pstmt.executeUpdate();
                if (j > 0) {
                    pstmt = conn.prepareStatement("insert into useraccountsecurity(user_id, security_question_id, answer) values((select max(user_id) from usermaster),?,?)");
                    pstmt.setString(1, obj.getDdlSecQues());
                    pstmt.setString(2, obj.getTxtSecAnswer());
                    int k = pstmt.executeUpdate();
                    if (k > 0) {
                        result = "SignUp Successfully";
                    }
                }
            }

        } catch (Exception e) {
            System.out.println("signUp():" + e);
        }
        return result;
    }
}
