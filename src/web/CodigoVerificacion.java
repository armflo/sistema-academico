package web;
import java.util.Properties;
import java.io.IOException;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMultipart;
import javax.mail.Multipart;
@SuppressWarnings("serial")

public class CodigoVerificacion extends HttpServlet {
	public void doGet(HttpServletRequest req,
			HttpServletResponse resp) throws IOException {
		// ...
		String validar = req.getParameter("validarCodigo");
		Properties props = new Properties();
		Session session = Session.getDefaultInstance(props, null);
		MimeBodyPart htmlPart = new MimeBodyPart();
		Multipart mp = new MimeMultipart();
		String codigo ="";
		for (int i = 0; i < 5; i++) {
			int r = (int)(Math.random()*10);
			codigo=codigo+r;
		}
		String msgBody = codigo;

		try {
			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress("likeimic@gmail.com", "LiKeimi"));
			msg.addRecipient(Message.RecipientType.TO,
					new InternetAddress(validar, "Sr. Usuario"));
			msg.setSubject("Codigo de verificacion");
			htmlPart.setContent(msgBody, "text/html");
			mp.addBodyPart(htmlPart);
			msg.setContent(mp);
			Transport.send(msg);
			resp.getWriter().print(codigo);
		} catch (AddressException e) {
			// ...
			resp.getWriter().println("error");
		} catch (MessagingException e) {
			// ...
			resp.getWriter().println("error");
		}
	}
}