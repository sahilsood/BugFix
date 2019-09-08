/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bugfix.beans.admin;

/**
 *
 * @author Modi
 */
public class AddStateBean {
    private String txtStateName,rbStatus,hdCountryId,hdCountryName;

    public String getTxtStateName() {
        return txtStateName;
    }

    public void setTxtStateName(String txtStateName) {
        this.txtStateName = txtStateName;
    }

    public String getHdCountryName() {
        return hdCountryName;
    }

    public void setHdCountryName(String hdCountryName) {
        this.hdCountryName = hdCountryName;
    }

    public String getRbStatus() {
        return rbStatus;
    }

    public void setRbStatus(String rbStatus) {
        this.rbStatus = rbStatus;
    }

    public String getHdCountryId() {
        return hdCountryId;
    }

    public void setHdCountryId(String hdCountryId) {
        this.hdCountryId = hdCountryId;
    }


}
