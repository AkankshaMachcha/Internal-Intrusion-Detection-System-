package com.util;
import java.net.Inet4Address;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
 


/*******  SSL:- (Secure Sockets Layer) ********/
public class SendAttachmentInEmail {
    
    Session session;
    String To;
   
public int EmailSending(String To, String Sub, String Msg, String Attachment,String Attachment2  ) throws Exception {
     // System.out.println("----------To-----------"+To);
        int flag;
        try {
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class",
                    "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");

            session = Session.getDefaultInstance(props,
                    new javax.mail.Authenticator() {
                        @Override
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication("akkumachcha@gmail.com","Akanksha@123");
                        }
                    });
        
            String From = "akkumachcha@gmail.com";
                
    
         // Create a default MimeMessage object.
            Message message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(From));

            // Set To: header field of the header.
            message.setRecipients(Message.RecipientType.TO,
               InternetAddress.parse(To));

            // Set Subject: header field
            message.setSubject("IIDS Mail");

            // Create the message part
            BodyPart messageBodyPart = new MimeBodyPart();

            // Now set the actual message
            
            Inet4Address inet = (Inet4Address) Inet4Address.getLocalHost();
            String ipAddress = inet.getHostAddress();
            
            messageBodyPart.setText("The malicious activity occured on this IP Address : "+ipAddress+" and Attachments are given below");

            // Create a multipar message
            Multipart multipart = new MimeMultipart();

            // Set text message part
            multipart.addBodyPart(messageBodyPart);
              // Part two is attachment
             //--------------------------------------------------------------- 
            /*messageBodyPart = new MimeBodyPart();
            String filename = Attachment;
            DataSource source = new FileDataSource(filename);
            messageBodyPart.setDataHandler(new DataHandler(source));
            messageBodyPart.setFileName(filename);
            multipart.addBodyPart(messageBodyPart);*/

            //-----------------------------------------------------
             addAttachment(multipart, Attachment);
             addAttachment(multipart, Attachment2);
                // Send the complete message parts
            message.setContent(multipart);

            // Send message
            Transport.send(message);

           System.out.println("Sent message successfully....done");
            
            flag = 1;
        } catch (MessagingException ex) {
            System.out.println("Exception "+ex);
            return -1;
            
        }
      return flag;
    }//SEND USER MAIL END
private static void addAttachment(Multipart multipart, String filename) throws Exception
{
    DataSource source = new FileDataSource(filename);
    BodyPart messageBodyPart = new MimeBodyPart();        
    messageBodyPart.setDataHandler(new DataHandler(source));
    messageBodyPart.setFileName(filename);
    multipart.addBodyPart(messageBodyPart);
}
    
    public static void main(String[] args) throws Exception {
            SendAttachmentInEmail s = new SendAttachmentInEmail();
            s.EmailSending("@gmail.com", "Test", "Test", "D:\\screenshot.png","D:\\WebTest.png");
    } 
}//CLOSE MAIN CLASS