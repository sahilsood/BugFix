/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.services.admin;

import bugfix.beans.admin.AddCountryBean;
import bugfix.beans.common.CountrymasterBean;
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
public class CountrymasterServices {

    public List<CountrymasterBean> getCountries() {
        List<CountrymasterBean> lst = new ArrayList<>();
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("select * from country");
                ResultSet rs = pstmt.executeQuery();) {
            while (rs.next()) {
                CountrymasterBean objBean = new CountrymasterBean();
                objBean.setCountryId(rs.getInt("country_id"));
                objBean.setCountryName(rs.getString("name"));
                objBean.setStatus(rs.getInt("status"));
                lst.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("Error in getCountries()" + e);
        }
        return lst;
    }

    public String changeStatusToInactive(int countryId) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("update country set status=0 where country_id='" + countryId + "'");) {
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "status changed to inactive";
            }
        } catch (Exception e) {
            System.out.println("Error in changeStatusToInactive()" + e);
        }
        return result;
    }

    public String changeStatusToActive(int countryId) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("update country set status=1 where country_id='" + countryId + "'");) {
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "status changed to Active";
            }
        } catch (Exception e) {
            System.out.println("Error in changeStatusToActive()" + e);
        }
        return result;
    }

    public String addCountry(AddCountryBean objBean) {
        String result = "failed";
        try (Connection conn = ConnectDB.connect();
                PreparedStatement pstmt = conn.prepareStatement("insert into country(name,status) values(?,?)");) {
            pstmt.setString(1, objBean.getTxtCountryName());
            pstmt.setInt(2, Integer.parseInt(objBean.getRbStatus()));
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "Addition Successfull";
            }
        } catch (Exception e) {
            System.out.println("Error in addCountry()" + e);
        }
        return result;
    }
}
