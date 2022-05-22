/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package send.mail;

import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import bookings.Email;

/**
 *
 * @author User
 */
public class SendEmail {

    public String getRandom() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }

    public boolean SendEmail(Email email) {
        boolean set = false;

        String toEmail = email.getEmail();
        String fromEmail = "elparaiso@mail.com";
        String password = "Dob.30/07/1999";

        try {

            Properties pro = new Properties();
            pro.setProperty("mail.smtp.host", "smtp.mail.com");
            pro.setProperty("mail.smtp.port", "587");
            pro.setProperty("mail.smtp.auth", "true");
            pro.setProperty("mail.smtp.starttls.enable", "true");
            pro.put("mail.smtp.socketFactory.port", "587");
            pro.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

            //we are getting a session for email and pwd authentication
            Session session = Session.getInstance(pro, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });
            
            Message msg = new MimeMessage(session);
            
            msg.setFrom(new InternetAddress(fromEmail));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            
            msg.setSubject("Your Booking Verification & Confirmation");
            
            msg.setText("Your Booking Has Been Confirmed! Please use This Code As Your Booking Verification Code: " + email.getCode());
            
            Transport.send(msg);
            
            set=true;
            

        } catch (Exception e) {
            e.printStackTrace();
        }

        return set;
    }

}
