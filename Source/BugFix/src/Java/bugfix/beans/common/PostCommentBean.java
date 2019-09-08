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
public class PostCommentBean {
    private int txtAnswerId, txtQuestionId, txtUserId;
    private String taAComment, taQComment;

    public int getTxtUserId() {
        return txtUserId;
    }

    public String getTaAComment() {
        return taAComment;
    }

    public void setTaAComment(String taAComment) {
        this.taAComment = taAComment;
    }

    public String getTaQComment() {
        return taQComment;
    }

    public void setTaQComment(String taQComment) {
        this.taQComment = taQComment;
    }

    public void setTxtUserId(int txtUserId) {
        this.txtUserId = txtUserId;
    }

    public int getTxtAnswerId() {
        return txtAnswerId;
    }

    public void setTxtAnswerId(int txtAnswerId) {
        this.txtAnswerId = txtAnswerId;
    }

    public int getTxtQuestionId() {
        return txtQuestionId;
    }

    public void setTxtQuestionId(int txtQuestionId) {
        this.txtQuestionId = txtQuestionId;
    }

}
