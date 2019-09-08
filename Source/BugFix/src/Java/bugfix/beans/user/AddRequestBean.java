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
public class AddRequestBean {

    private String txtRequestTitle, taDescription;
    private int txtUserId;

    public int getTxtUserId() {
        return txtUserId;
    }

    public void setTxtUserId(int txtUserId) {
        this.txtUserId = txtUserId;
    }

    public String getTxtRequestTitle() {
        return txtRequestTitle;
    }

    public void setTxtRequestTitle(String txtRequestTitle) {
        this.txtRequestTitle = txtRequestTitle;
    }

    public String getTaDescription() {
        return taDescription;
    }

    public void setTaDescription(String taDescription) {
        this.taDescription = taDescription;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    private int userId;
}
