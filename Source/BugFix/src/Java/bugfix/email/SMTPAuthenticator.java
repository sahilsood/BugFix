/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bugfix.email;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

/**
 *
 * @author Administrator
 */
public class SMTPAuthenticator extends Authenticator{
    private String username,password;

    /**
     *
     * @param username
     * @param password
     */
    public SMTPAuthenticator(String username,String password){
		this.username=username;
		this.password=password;
		
	}
    
    /**
     *
     * @return
     */
    public javax.mail.PasswordAuthentication getPasswordAuthentication(){
		
		return new PasswordAuthentication(this.username,this.password);
	}

}

