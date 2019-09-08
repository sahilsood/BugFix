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
public class QuestionmasterBean {
       private int userId, questionId, votes;
    private String title, body, tags, questionComment,name,repo;
    private Date questionDate, questionCommentDate;

    public int getUserId() {
        return userId;
    }

    public Date getQuestionCommentDate() {
        return questionCommentDate;
    }

    public void setQuestionCommentDate(Date questionCommentDate) {
        this.questionCommentDate = questionCommentDate;
    }

    public String getRepo() {
        return repo;
    }

    public Date getQuestionDate() {
        return questionDate;
    }

    public void setQuestionDate(Date questionDate) {
        this.questionDate = questionDate;
    }


    public String getQuestionComment() {
        return questionComment;
    }

    public void setQuestionComment(String questionComment) {
        this.questionComment = questionComment;
    }

    public void setRepo(String repo) {
        this.repo = repo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }

    public int getVotes() {
        return votes;
    }

    public void setVotes(int votes) {
        this.votes = votes;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }
}
