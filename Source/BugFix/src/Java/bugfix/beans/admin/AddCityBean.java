/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.beans.admin;

/**
 *
 * @author sahilsood
 */
public class AddCityBean {
    
    private String txtCityName,rbStatus,hdStateId,hdStateName;

    public String getTxtCityName() {
        return txtCityName;
    }

    public void setTxtCityName(String txtCityName) {
        this.txtCityName = txtCityName;
    }

    public String getRbStatus() {
        return rbStatus;
    }

    public void setRbStatus(String rbStatus) {
        this.rbStatus = rbStatus;
    }

    public String getHdStateId() {
        return hdStateId;
    }

    public void setHdStateId(String hdStateId) {
        this.hdStateId = hdStateId;
    }

    public String getHdStateName() {
        return hdStateName;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public void setHdStateName(String hdStateName) {
        this.hdStateName = hdStateName;
    }
    private String cityName;
}
