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
public class PostAnswerBean {
    private int txtUserId, txtQuestionId,txtAnswerId;
    private String taPostAnswer;

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

    public int getTxtAnswerId() {
        return txtAnswerId;
    }

    public void setTxtAnswerId(int txtAnswerId) {
        this.txtAnswerId = txtAnswerId;
    }

    public String getTaPostAnswer() {
        return taPostAnswer;
    }

    public void setTaPostAnswer(String taPostAnswer) {
        this.taPostAnswer = taPostAnswer;
    }
}
