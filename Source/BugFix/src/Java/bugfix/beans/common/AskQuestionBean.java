/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.beans.common;

import java.sql.Date;

/**
 *
 * @author sahilsood
 */
public class AskQuestionBean {
    private int txtUserId, txtQuestionId, txtVotes;
    private String txtTitle, taBody, txtTags;

    public int getTxtUserId() {
        return txtUserId;
    }

    public void setTxtUserId(int txtUserId) {
        this.txtUserId = txtUserId;
    }

    public int getTxtQuestionId() {
        return txtQuestionId;
    }

    public void setTxtQuestionId(int txtQuestionId) {
        this.txtQuestionId = txtQuestionId;
    }

    public int getTxtVotes() {
        return txtVotes;
    }

    public void setTxtVotes(int txtVotes) {
        this.txtVotes = txtVotes;
    }

    public String getTxtTitle() {
        return txtTitle;
    }

    public void setTxtTitle(String txtTitle) {
        this.txtTitle = txtTitle;
    }

    public String getTaBody() {
        return taBody;
    }

    public void setTaBody(String taBody) {
        this.taBody = taBody;
    }

    public String getTxtTags() {
        return txtTags;
    }

    public void setTxtTags(String txtTags) {
        this.txtTags = txtTags;
    }

    public Date getTxtQuestionDate() {
        return txtQuestionDate;
    }

    public void setTxtQuestionDate(Date txtQuestionDate) {
        this.txtQuestionDate = txtQuestionDate;
    }

   
    private Date txtQuestionDate;
}
