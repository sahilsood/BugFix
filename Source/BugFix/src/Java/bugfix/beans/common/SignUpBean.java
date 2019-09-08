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
public class SignUpBean {
    private int txtUserId;
    private String txtUsername, txtPassword, txtName, txtDOB, txtPhone, txtMobile, txtEmail, taAddress, rbGender, ddlCountry, ddlState, ddlCity, txtPinCode, ddlSecQues, txtSecAnswer, rbUserStatus, rbUserType;

    public String getTxtUsername() {
        return txtUsername;
    }

    public int getTxtUserId() {
        return txtUserId;
    }

    public String getRbUserType() {
        return rbUserType;
    }

    public void setRbUserType(String rbUserType) {
        this.rbUserType = rbUserType;
    }

    public void setTxtUserId(int txtUserId) {
        this.txtUserId = txtUserId;
    }

    public String getRbUserStatus() {
        return rbUserStatus;
    }

    public void setRbUserStatus(String rbUserStatus) {
        this.rbUserStatus = rbUserStatus;
    }

    public String getDdlSecQues() {
        return ddlSecQues;
    }

    public void setDdlSecQues(String ddlSecQues) {
        this.ddlSecQues = ddlSecQues;
    }

    public String getTxtSecAnswer() {
        return txtSecAnswer;
    }

    public void setTxtSecAnswer(String txtSecAnswer) {
        this.txtSecAnswer = txtSecAnswer;
    }

    public void setTxtUsername(String txtUsername) {
        this.txtUsername = txtUsername;
    }

    public String getTxtPassword() {
        return txtPassword;
    }

    public void setTxtPassword(String txtPassword) {
        this.txtPassword = txtPassword;
    }

    public String getTxtName() {
        return txtName;
    }

    public void setTxtName(String txtName) {
        this.txtName = txtName;
    }

    public String getTxtDOB() {
        return txtDOB;
    }

    public void setTxtDOB(String txtDOB) {
        this.txtDOB = txtDOB;
    }

    public String getTxtPhone() {
        return txtPhone;
    }

    public void setTxtPhone(String txtPhone) {
        this.txtPhone = txtPhone;
    }

    public String getTxtMobile() {
        return txtMobile;
    }

    public void setTxtMobile(String txtMobile) {
        this.txtMobile = txtMobile;
    }

    public String getTxtEmail() {
        return txtEmail;
    }

    public void setTxtEmail(String txtEmail) {
        this.txtEmail = txtEmail;
    }

    public String getTaAddress() {
        return taAddress;
    }

    public void setTaAddress(String taAddress) {
        this.taAddress = taAddress;
    }

    public String getRbGender() {
        return rbGender;
    }

    public void setRbGender(String rbGender) {
        this.rbGender = rbGender;
    }

    public String getDdlCountry() {
        return ddlCountry;
    }

    public void setDdlCountry(String ddlCountry) {
        this.ddlCountry = ddlCountry;
    }

    public String getDdlState() {
        return ddlState;
    }

    public void setDdlState(String ddlState) {
        this.ddlState = ddlState;
    }

    public String getDdlCity() {
        return ddlCity;
    }

    public void setDdlCity(String ddlCity) {
        this.ddlCity = ddlCity;
    }

    public String getTxtPinCode() {
        return txtPinCode;
    }

    public void setTxtPinCode(String txtPinCode) {
        this.txtPinCode = txtPinCode;
    }
}
