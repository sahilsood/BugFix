/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.services.common;

import bugfix.beans.common.AnswerVotemasterBean;
import bugfix.beans.common.AnswermasterBean;
import bugfix.beans.common.FAQmasterBean;
import bugfix.beans.common.AskQuestionBean;
import bugfix.beans.common.PostAnswerBean;
import bugfix.beans.common.PostCommentBean;
import bugfix.beans.common.QuestionmasterBean;
import bugfix.beans.common.RequestmasterBean;
import bugfix.beans.common.SecuritymasterBean;
import bugfix.beans.common.SignUpBean;
import bugfix.beans.common.UsermasterBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import bugfix.email.SendSMTP;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sahilsood
 */
public class UsermasterServices {

    /**
     *
     * @param un
     * @param pass
     * @return
     */
    public UsermasterBean authUser(String un, String pass) {
        UsermasterBean objBean = null;

        try {

            Connection con = ConnectDB.connect();
            PreparedStatement pstmt = con.prepareStatement("select * from usermaster where username=? and password=binary(?)");
            pstmt.setString(1, un);
            pstmt.setString(2, pass);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                objBean = new UsermasterBean();
                objBean.setUserId(rs.getInt("user_id"));
                objBean.setUsername(rs.getString("username"));
                objBean.setPassword(rs.getString("password"));
                objBean.setUserType(rs.getString("user_type"));
                objBean.setUserStatus(rs.getString("user_status"));

            }
        } catch (Exception e) {
            System.out.println("In AuthUser()" + e);
        }
        return objBean;
    }

    /**
     *
     * @param oldPassword
     * @param newPassword
     * @param userId
     * @return
     */
    public String changePassword(String oldPassword, String newPassword, String userId) {
        String result = "Failed";
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select * from usermaster where password=? and user_id=?");
            pstmt.setString(1, oldPassword);
            pstmt.setInt(2, Integer.parseInt(userId));
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                pstmt = con.prepareStatement("update usermaster set password=? where user_id=?");
                pstmt.setString(1, newPassword);
                pstmt.setInt(2, Integer.parseInt(userId));
                int i = pstmt.executeUpdate();
                if (i > 0) {
                    result = "Password Updated Successfully";
                }
            }
        } catch (Exception e) {
            System.out.println("In changePassword():" + e);
        }
        return result;
    }

    /**
     *
     * @param un
     * @return
     */
    public String forgotPassword(String un) {
        String result = "Failure sending email";
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select * from usermaster where (username=? or email=?)");
            pstmt.setString(1, un);
            pstmt.setString(2, un);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                result = new SendSMTP().sendMail(rs.getString("email"), "Your recovered Password is" + rs.getString("password"), "Thankyou");
            }
        } catch (Exception e) {
            System.out.println("In changePassword():" + e);
        }
        return result;
    }

    public UsermasterBean getUserInfoById(int id) {
        UsermasterBean obj = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = ConnectDB.connect();
            pstmt = conn.prepareStatement("select um.user_id, um.username,um.user_status,um.user_type,ud.name,ud.gender,ud.dob,ud.phone,ud.mobile,ud.email,ud.address,ud.country_id,ud.state_id,ud.city_id,ud.pin_code,\n"
                    + "uas.security_question_id,uas.answer from usermaster um inner join userdetail ud on um.user_id=ud.user_id inner join useraccountsecurity uas on um.user_id=uas.user_id and um.user_id=?;");
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                obj = new UsermasterBean();
                obj.setUserId(rs.getInt("user_id"));
                obj.setUsername(rs.getString("username"));
                obj.setUserStatus(rs.getString("user_status"));
                obj.setUserType(rs.getString("user_Type"));
                obj.setName(rs.getString("name"));
                obj.setGender(rs.getString("gender"));
                obj.setDob(rs.getString("dob"));
                obj.setMobile(rs.getString("mobile"));
                obj.setPhone(rs.getString("phone"));
                obj.setEmail(rs.getString("email"));
                obj.setAddress(rs.getString("address"));
                obj.setCountryId(rs.getInt("country_id"));
                obj.setStateId(rs.getInt("state_id"));
                obj.setCityId(rs.getInt("city_id"));
                obj.setPinCode(rs.getString("pin_code"));
                obj.setSecurityQuestionId(rs.getInt("security_question_id"));
                obj.setSecAnswer(rs.getString("answer"));
            }

        } catch (Exception e) {
            System.out.println("getUserInfoById():" + e);
        }
        return obj;
    }

    public String updateProfile(SignUpBean obj) {
        String result = "Failed to Update Profile";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = ConnectDB.connect();
            pstmt = conn.prepareStatement("update usermaster set username=? where user_id=?;");
            pstmt.setString(1, obj.getTxtUsername());
            pstmt.setInt(2, obj.getTxtUserId());
            int i = pstmt.executeUpdate();
            if (i > 0) {
                pstmt = conn.prepareStatement("update userdetail set name=?, gender=?, dob=?, phone=?, mobile=?, email=?, address=?, country_id=?, state_id=?, city_id=?, pin_code=? where user_id=?;");
                pstmt.setString(1, obj.getTxtName());
                pstmt.setString(2, obj.getRbGender());
                pstmt.setString(3, obj.getTxtDOB());
                pstmt.setString(4, obj.getTxtPhone());
                pstmt.setString(5, obj.getTxtMobile());
                pstmt.setString(6, obj.getTxtEmail());
                pstmt.setString(7, obj.getTaAddress());
                pstmt.setString(8, obj.getDdlCountry());
                pstmt.setString(9, obj.getDdlState());
                pstmt.setString(10, obj.getDdlCity());
                pstmt.setString(11, obj.getTxtPinCode());
                pstmt.setInt(12, obj.getTxtUserId());
                i = pstmt.executeUpdate();
                if (i > 0) {
                    pstmt = conn.prepareStatement("update useraccountsecurity set security_question_id=?, answer=? where user_id=?;");

                    pstmt.setString(1, obj.getDdlSecQues());
                    pstmt.setString(2, obj.getTxtSecAnswer());
                    pstmt.setInt(3, obj.getTxtUserId());
                    i = pstmt.executeUpdate();
                    if (i > 0) {
                        result = "Profile Updated Successfully";
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("updateProfile():" + e);
        }
        return result;
    }

    public List<FAQmasterBean> getAllFAQ() {
        List<FAQmasterBean> lstFAQ = new ArrayList<>();
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select * from faqmaster;");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                FAQmasterBean objBean = new FAQmasterBean();
                objBean.setFaqId(rs.getInt("faq_id"));
                objBean.setQuestion(rs.getString("question"));
                objBean.setAnswer(rs.getString("answer"));
                objBean.setStatus(rs.getInt("status"));
                lstFAQ.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("In getAllFAQ():" + e);
        }
        return lstFAQ;
    }

    public List<RequestmasterBean> getAllRequests() {
        List<RequestmasterBean> lstRequests = new ArrayList<>();
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select usermaster.user_id, requestmaster.request_title, requestmaster.description, requestmaster.request_date from usermaster, requestmaster where requestmaster.user_id=usermaster.user_id;");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                RequestmasterBean objBean = new RequestmasterBean();
                objBean.setUserId(rs.getInt("user_id"));
                objBean.setRequestTitle(rs.getString("request_title"));
                objBean.setDescription(rs.getString("description"));
                objBean.setRequestDate(rs.getDate("request_date"));
                lstRequests.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("In getAllFeedbacks():" + e);
        }
        return lstRequests;
    }

    public List<SecuritymasterBean> getAllSecQues() {
        List<SecuritymasterBean> lstSecQues = new ArrayList<>();
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select * from securitymaster;");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                SecuritymasterBean objBean = new SecuritymasterBean();
                objBean.setSecurityQuestionId(rs.getInt("security_question_id"));
                objBean.setQuestion(rs.getString("question"));
                objBean.setStatus(rs.getInt("status"));
                lstSecQues.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("In getAllFeedbacks():" + e);
        }
        return lstSecQues;
    }

    public String askQuestion(AskQuestionBean objBean) {
        String result = "Failed to ask";
        try (Connection conn = ConnectDB.connect();) {
            PreparedStatement pstmt = conn.prepareStatement("insert into questionmaster(title, body, tags, question_date, user_id) values(?,?,?, sysdate(),?);");
            pstmt.setString(1, objBean.getTxtTitle());
            pstmt.setString(2, objBean.getTaBody());
            pstmt.setString(3, objBean.getTxtTags());
            pstmt.setInt(4, objBean.getTxtUserId());
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "Question Posted";
            }
        } catch (Exception e) {
            System.out.println("Error in askQuestion()" + e);
        }
        return result;
    }

    public List<QuestionmasterBean> getAllQuestions() {
        List<QuestionmasterBean> lstQues = new ArrayList<>();
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select a.*,b.*,c.* from questionmaster a, userdetail b, userrepomaster c where a.user_id=b.user_id and b.user_id=c.user_id");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                QuestionmasterBean objBean = new QuestionmasterBean();
                objBean.setQuestionId(rs.getInt("question_id"));
                objBean.setTitle(rs.getString("title"));
                objBean.setBody(rs.getString("body"));
                objBean.setTags(rs.getString("tags"));
                objBean.setQuestionDate(rs.getDate("question_date"));
                objBean.setName(rs.getString("name"));
                objBean.setRepo(rs.getString("repo"));
                objBean.setVotes(rs.getInt("votes"));
                lstQues.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("In getAllQuestions():" + e);
        }
        return lstQues;
    }

    public QuestionmasterBean getQuestionDetailsById(int qid) {
        QuestionmasterBean objBean = new QuestionmasterBean();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = ConnectDB.connect();
            pstmt = conn.prepareStatement("select a.*,b.*,c.* from questionmaster a, userdetail b, userrepomaster c where a.user_id=b.user_id and b.user_id=c.user_id and question_id=?");
            pstmt.setInt(1, qid);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                objBean.setQuestionId(rs.getInt("question_id"));
                objBean.setTitle(rs.getString("title"));
                objBean.setBody(rs.getString("body"));
                objBean.setTags(rs.getString("tags"));
                objBean.setQuestionDate(rs.getDate("question_date"));
                objBean.setName(rs.getString("name"));
                objBean.setRepo(rs.getString("repo"));
                objBean.setVotes(rs.getInt("votes"));
            }
        } catch (Exception e) {
            System.out.println("In getQuestionDetailsById():" + e);
        }
        return objBean;
    }

    public List<QuestionmasterBean> getAllQuestionCommentsById(int qid) {
        List<QuestionmasterBean> lstQCmnt = new ArrayList<>();
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select a.*,b.*,c.* from questioncommentmaster a, userdetail b, userrepomaster c where a.user_id=b.user_id and b.user_id=c.user_id and question_id=?");
            pstmt.setInt(1, qid);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                QuestionmasterBean objBean = new QuestionmasterBean();
                objBean.setQuestionComment(rs.getString("comment"));
                objBean.setQuestionCommentDate(rs.getDate("comment_date"));
                objBean.setName(rs.getString("name"));
                objBean.setRepo(rs.getString("repo"));
                objBean.setQuestionId(rs.getInt("question_id"));
                lstQCmnt.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("In getAllQuestionCommentsById():" + e);
        }
        return lstQCmnt;
    }

    public List<AnswermasterBean> getAllAnswersById(int qid) {
        List<AnswermasterBean> lstAns = new ArrayList<>();
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select a.*,b.*,c.* from answermaster a, userdetail b, userrepomaster c where a.user_id=b.user_id and b.user_id=c.user_id and question_id=?");
            pstmt.setInt(1, qid);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                AnswermasterBean objBean = new AnswermasterBean();
                objBean.setAnswerId(rs.getInt("answer_id"));
                objBean.setAnswer(rs.getString("answer"));
                objBean.setName(rs.getString("name"));
                objBean.setRepo(rs.getString("repo"));
                objBean.setQuestionId(rs.getInt("question_id"));
                lstAns.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("In getAllAnswersById():" + e);
        }
        return lstAns;
    }

    public List<AnswermasterBean> getAllAnswerCommentsByAnswerId(int aid) {
        List<AnswermasterBean> lstACmnt = new ArrayList<>();
        try (Connection con = ConnectDB.connect();) {

            PreparedStatement pstmt = con.prepareStatement("select * from answercommentmaster a, userdetail b, userrepomaster c where a.user_id=b.user_id and b.user_id=c.user_id and a.answer_id=?;");
            pstmt.setInt(1, aid);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                AnswermasterBean objBean = new AnswermasterBean();
                objBean.setAnswerComment(rs.getString("comment"));
                objBean.setAnswerCommentDate(rs.getDate("comment_date"));
                objBean.setName(rs.getString("name"));
                objBean.setRepo(rs.getString("repo"));
                objBean.setAnswerId(rs.getInt("answer_id"));
                lstACmnt.add(objBean);
            }
        } catch (Exception e) {
            System.out.println("In getAllAnswerCommentsById():" + e);
        }
        return lstACmnt;
    }

    public String postAnswer(PostAnswerBean objBean) {
        String result = "Failed to Post";
        try (Connection conn = ConnectDB.connect();) {
            PreparedStatement pstmt = conn.prepareStatement("insert into answermaster(answer, user_id, question_id) values(?,?,?);");
            pstmt.setString(1, objBean.getTaPostAnswer());
            pstmt.setInt(2, objBean.getTxtUserId());
            pstmt.setInt(3, objBean.getTxtQuestionId());
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result = "Answer Posted";
            }
        } catch (Exception e) {
            System.out.println("Error in postAnswer()" + e);
        }
        return result;
    }

    public String postQuestionComment(PostCommentBean objBean) {
        String result1 = "Failed to Post";
        try (Connection conn = ConnectDB.connect();) {
            PreparedStatement pstmt = conn.prepareStatement("insert into questioncommentmaster(comment, user_id,comment_date, question_id) values(?,?,sysdate(),?);");
            pstmt.setString(1, objBean.getTaQComment());
            pstmt.setInt(2, objBean.getTxtUserId());
            pstmt.setInt(3, objBean.getTxtQuestionId());
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result1 = "Comment Posted";
            }
        } catch (Exception e) {
            System.out.println("Error in postQuestionComment()" + e);
        }
        return result1;
    }
    public String postAnswerComment(PostCommentBean objBean) {
        String result1 = "Failed to Post";
        try (Connection conn = ConnectDB.connect();) {
            PreparedStatement pstmt = conn.prepareStatement("insert into answercommentmaster(comment, user_id,comment_date, answer_id) values(?,?,sysdate(),?);");
            pstmt.setString(1, objBean.getTaAComment());
            pstmt.setInt(2, objBean.getTxtUserId());
            pstmt.setInt(3, objBean.getTxtAnswerId());
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result1 = "Comment Posted";
            }
        } catch (Exception e) {
            System.out.println("Error in postAnswerComment()" + e);
        }
        return result1;
    }
    
        public String voteAnswer(AnswerVotemasterBean objBean) {
        String result1 = "Failed to Post";
        try (Connection conn = ConnectDB.connect();) {
            PreparedStatement pstmt = conn.prepareStatement("insert into answervotemaster(is_favour,answer_id, user_id) values(1,?,?);");
            pstmt.setInt(1, objBean.getAnswerId());
            pstmt.setInt(2, objBean.getUserId());
            int i = pstmt.executeUpdate();
            if (i > 0) {
                result1 = "Answer Voted";
            }
        } catch (Exception e) {
            System.out.println("Error in voteAnswer()" + e);
        }
        return result1;
    }
}
