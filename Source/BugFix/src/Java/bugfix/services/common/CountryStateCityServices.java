/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.services.common;

import bugfix.beans.common.CitymasterBean;
import bugfix.beans.common.CountrymasterBean;
import bugfix.beans.common.StatemasterBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sahilsood
 */
public class CountryStateCityServices {
    public List<CountrymasterBean> getAllCountries()
    {
        List<CountrymasterBean> lstCountries = new ArrayList<>();
        try(Connection conn = ConnectDB.connect();PreparedStatement pstmt = conn.prepareStatement("select * from country");){
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                CountrymasterBean obj = new CountrymasterBean();
                obj.setCountryId(rs.getInt("country_id"));
                obj.setCountryName(rs.getString("name"));
                lstCountries.add(obj);
            }
        }
        catch(Exception e){
            System.out.println("getAllCountries(): "+e);
        }
        return lstCountries;
    }
    
    public List<StatemasterBean> getAllStatesByCountryId(int cid)
    {
        List<StatemasterBean> lstStates = new ArrayList<>();
        try(Connection conn = ConnectDB.connect();PreparedStatement pstmt = conn.prepareStatement("select * from state where country_id=?");){
            pstmt.setInt(1, cid);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                StatemasterBean obj = new StatemasterBean();
                obj.setStateId(rs.getInt("state_id"));
                obj.setStateName(rs.getString("name"));
                lstStates.add(obj);
            }
        }
        catch(Exception e){
            System.out.println("getAllStatesByCountryId(): "+e);
        }
        return lstStates;
    }
    
    public List<CitymasterBean> getAllCitiesByStateId(int sid)
    {
        List<CitymasterBean> lstCities = new ArrayList<>();
        try(Connection conn = ConnectDB.connect();PreparedStatement pstmt = conn.prepareStatement("select * from city where state_id=?");){
            pstmt.setInt(1, sid);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                CitymasterBean obj = new CitymasterBean();
                obj.setCityId(rs.getInt("city_id"));
                obj.setCityName(rs.getString("name"));
                lstCities.add(obj);
            }
        }
        catch(Exception e){
            System.out.println("getAllCitiesByStateId(): "+e);
        }
        return lstCities;
    }
}
