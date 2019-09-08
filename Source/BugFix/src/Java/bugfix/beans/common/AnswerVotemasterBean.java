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
public class AnswerVotemasterBean {
    private int voteId, isFavour, userId, answerId;
    private String txtQuestionId;

    public int getVoteId() {
        return voteId;
    }

    public void setVoteId(int voteId) {
        this.voteId = voteId;
    }

    public int getIsFavour() {
        return isFavour;
    }

    public void setIsFavour(int isFavour) {
        this.isFavour = isFavour;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getAnswerId() {
        return answerId;
    }

    public void setAnswerId(int answerId) {
        this.answerId = answerId;
    }

    public String getTxtQuestionId() {
        return txtQuestionId;
    }

    public void setTxtQuestionId(String txtQuestionId) {
        this.txtQuestionId = txtQuestionId;
    }
}
