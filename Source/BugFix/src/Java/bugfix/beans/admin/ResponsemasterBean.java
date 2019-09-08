/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.beans.admin;

import java.util.Date;

/**
 *
 * @author sahilsood
 */
public class ResponsemasterBean {
    public int responseId, requestId, responseUserId;
    public String response;

    public int getResponseId() {
        return responseId;
    }

    public void setResponseId(int responseId) {
        this.responseId = responseId;
    }

    public int getRequestId() {
        return requestId;
    }

    public void setRequestId(int requestId) {
        this.requestId = requestId;
    }

    public int getResponseUserId() {
        return responseUserId;
    }

    public void setResponseUserId(int responseUserId) {
        this.responseUserId = responseUserId;
    }

    public String getResponse() {
        return response;
    }

    public void setResponse(String response) {
        this.response = response;
    }

    public Date getResponseDate() {
        return responseDate;
    }

    public void setResponseDate(Date responseDate) {
        this.responseDate = responseDate;
    }
    public Date responseDate;
}
