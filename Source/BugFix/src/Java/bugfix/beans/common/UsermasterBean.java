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
public class UsermasterBean {
    private int userId, countryId, stateId, cityId, securityQuestionId;
    private String username, password, name, mobile, phone, gender, dob, email, userStatus, userType, address, ddlCountry, ddlState, ddlCity, pinCode, ddlQuestion, secAnswer;

    public int getCountryId() {
        return countryId;
    }

    public int getSecurityQuestionId() {
        return securityQuestionId;
    }

    public void setSecurityQuestionId(int securityQuestionId) {
        this.securityQuestionId = securityQuestionId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    public int getStateId() {
        return stateId;
    }

    public void setStateId(int stateId) {
        this.stateId = stateId;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }
    
    /**
     *
     * @return
     */
    public int getUserId() {
        return userId;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
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

    public String getDdlQuestion() {
        return ddlQuestion;
    }

    public void setDdlQuestion(String ddlQuestion) {
        this.ddlQuestion = ddlQuestion;
    }

    public String getPinCode() {
        return pinCode;
    }

    public void setPinCode(String pinCode) {
        this.pinCode = pinCode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     *
     * @param userId
     */
    public void setUserId(int userId) {
        this.userId = userId;
    }

    /**
     *
     * @return
     */
    public String getUsername() {
        return username;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    /**
     *
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     *
     * @return
     */
    public String getPassword() {
        return password;
    }

    /**
     *
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     *
     * @return
     */
    public String getName() {
        return name;
    }

    /**
     *
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     *
     * @return
     */
    public String getMobile() {
        return mobile;
    }

    /**
     *
     * @param mobile
     */
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    /**
     *
     * @return
     */
    public String getEmail() {
        return email;
    }

    /**
     *
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     *
     * @return
     */
    public String getUserStatus() {
        return userStatus;
    }

    /**
     *
     * @param userStatus
     */
    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus;
    }

    /**
     *
     * @return
     */
    public String getUserType() {
        return userType;
    }

    public String getSecAnswer() {
        return secAnswer;
    }

    public void setSecAnswer(String secAnswer) {
        this.secAnswer = secAnswer;
    }


    /**
     *
     * @param userType
     */
    public void setUserType(String userType) {
        this.userType = userType;
    }
}
