package com.springrest.service;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.springrest.bean.User;

@Service
public class EmailService {
	
	private JavaMailSender sender;

    @Autowired
    public EmailService(JavaMailSender javaMailSender) {
        this.sender = javaMailSender;
    }

    public void sendMail(User user) throws Exception{
    	String subject = "User Creation";
    	String text = "Hi "+user.getUserName()+"\n\n Your Login Credentials\n\n Username : "+user.getUserName()+"\n\n Password : "+user.getPassword() +"\n\n thank You";
//        SimpleMailMessage mailMessage = new SimpleMailMessage();
//        mailMessage.setTo(user.getUserName());
//        mailMessage.setSubject(subject);
//        mailMessage.setText(message);
//        mailMessage.setFrom("");
//        javaMailSender.send(mailMessage);
    	
    	MimeMessage message = sender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message);
        helper.setTo(user.getUserName());
        helper.setText(text);
        helper.setSubject(subject);
        
        sender.send(message);
        System.out.println("Mail Sent Success!");
    }

}
