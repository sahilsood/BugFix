/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.services.admin;

import bugfix.beans.admin.AddStateBean;
import bugfix.beans.common.StatemasterBean;
import bugfix.services.common.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Modi
 */
public class StatemasterServices {

    public List<StatemasterBean> getStates(int countryId) {
        List<StatemasterBean> lst = new ArrayList<>();
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("select * from state where country_id='" + countryId + "'");
                ResultSet rs = pstmt.executeQuery();) {
            while (rs.next()) {
                StatemasterBean objBean = new StatemasterBean();
                objBean.setStateId(rs.getInt("state_id"));
                objBean.setStateName(rs.getString("name"));
                objBean.setStatus(rs.getInt("status"));
                lst.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("Error in getStates()" + e);
        }
        return lst;
    }

    public String changeStatusToInactive(int stateId) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("update state set status=0 where state_id='" + stateId + "'");) {
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "status changed to inactive";
            }
        } catch (Exception e) {
            System.out.println("Error in changeStatusToInactive()" + e);
        }
        return result;
    }

    public String changeStatusToActive(int stateId) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("update state set status=1 where state_id='" + stateId + "'");) {
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "status changed to Active";
            }
        } catch (Exception e) {
            System.out.println("Error in changeStatusToActive()" + e);
        }
        return result;
    }
    
    public String addState(AddStateBean objBean) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("insert into state(name,country_id,status) values(?,?,?)");) {
            pstmt.setString(1, objBean.getTxtStateName());
            pstmt.setInt(2, Integer.parseInt(objBean.getHdCountryId()));
            pstmt.setInt(3, Integer.parseInt(objBean.getRbStatus()));
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "Addition Successfull";
            }
        } catch (Exception e) {
            System.out.println("Error in addState()" + e);
        }
        return result;
    }
}
