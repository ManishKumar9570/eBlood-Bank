package bloodBank.controller;
import javax.mail.PasswordAuthentication;
import javax.mail.Message;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.InternetAddress;
import javax.mail.Transport;
import javax.mail.MessagingException;
import javax.mail.Session;

import java.util.Date;
import java.util.Properties;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.mail.iap.Response;


public class EmailSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eemail=request.getParameter("eemail");
		String emessage=request.getParameter("emessage");
		
		
		final String adminEmailId = "pradhanmanish9502@gmail.com";
		final String password = "9570@Tin95123";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session email_session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(adminEmailId, password);
			}
		  });
		System.out.println("session created....."+email_session);
		try {

			Message message = new MimeMessage(email_session);
			
			message.setFrom(new InternetAddress(adminEmailId));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(eemail));
			
			message.setSubject("New Blood Request from " + eemail);
			message.setText(emessage);

			Transport.send(message);

			System.out.println("message sent ");

		} catch (MessagingException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
				
		
		response.sendRedirect("message.jsp");
		
	}

}

