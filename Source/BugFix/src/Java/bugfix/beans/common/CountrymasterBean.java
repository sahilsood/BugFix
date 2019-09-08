/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.beans.common;

/**
 *
 * @author sahilsood
 */
public class CountrymasterBean {
    private int CountryId, status;

    public int getCountryId() {
        return CountryId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setCountryId(int CountryId) {
        this.CountryId = CountryId;
    }

    public String getCountryName() {
        return CountryName;
    }

    public void setCountryName(String CountryName) {
        this.CountryName = CountryName;
    }
    private String CountryName;
}
