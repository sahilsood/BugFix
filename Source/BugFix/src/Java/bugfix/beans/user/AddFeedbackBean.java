/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.beans.user;

/**
 *
 * @author sahilsood
 */
public class AddFeedbackBean {
        private String taFeedback;
    private int txtUserId;

    public String getTaFeedback() {
        return taFeedback;
    }

    public void setTaFeedback(String taFeedback) {
        this.taFeedback = taFeedback;
    }

    public int getTxtUserId() {
        return txtUserId;
    }

    public void setTxtUserId(int txtUserId) {
        this.txtUserId = txtUserId;
    }
}
