package mail;

public class SendMailMain
{

public static void checkMail(String email,String verifycode)
{
String from = "b.bhups@gmail.com";
String to = email;
String subject = "Email verification code for registration";
String message = "verify code is : "+verifycode+" \n please do not reply on this Email \n no request will be entertained ";
SendMail sendMail = new SendMail(from, to, subject, message);
sendMail.send();
}
}
