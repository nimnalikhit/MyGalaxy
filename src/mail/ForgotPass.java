package mail;

public class ForgotPass
{

public static void checkMail(String email,String verifycode)
{
String from = "b.bhups@gmail.com";
String to = email;
String subject = "New Password for the account";
String message = "Your new Password is : "+verifycode+" \n please Change your password as soon as you log in \n ";
SendMail sendMail = new SendMail(from, to, subject, message);
sendMail.send();
}
}
