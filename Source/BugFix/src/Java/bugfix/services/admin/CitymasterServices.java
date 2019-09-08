/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.services.admin;

import bugfix.beans.admin.AddCityBean;
import bugfix.beans.common.CitymasterBean;
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
public class CitymasterServices {

    public List<CitymasterBean> getCities(int stateId) {
        List<CitymasterBean> lst = new ArrayList<>();
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("select * from city where state_id='" + stateId + "'");
                ResultSet rs = pstmt.executeQuery();) {
            while (rs.next()) {
                CitymasterBean objBean = new CitymasterBean();
                objBean.setCityId(rs.getInt("city_id"));
                objBean.setCityName(rs.getString("name"));
                objBean.setStatus(rs.getInt("status"));
                lst.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("Error in getCities()" + e);
        }
        return lst;
    }

    public String changeStatusToInactive(int cityId) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("update city set status=0 where city_id='" + cityId + "'");) {
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "status changed to inactive";
            }
        } catch (Exception e) {
            System.out.println("Error in changeStatusToInactive()" + e);
        }
        return result;
    }

    public String changeStatusToActive(int cityId) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("update city set status=1 where city_id='" + cityId + "'");) {
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "status changed to Active";
            }
        } catch (Exception e) {
            System.out.println("Error in changeStatusToActive()" + e);
        }
        return result;
    }
    
    public String addCity(AddCityBean objBean) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("insert into city(name,state_id,status) values(?,?,?)");) {
            pstmt.setString(1, objBean.getTxtCityName());
            pstmt.setInt(2, Integer.parseInt(objBean.getHdStateId()));
            pstmt.setInt(3, Integer.parseInt(objBean.getRbStatus()));
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "Addition Successfull";
            }
        } catch (Exception e) {
            System.out.println("Error in addCity()" + e);
        }
        return result;
    }
}
