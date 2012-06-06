class Sendmail < ActionMailer::Base
  default :from => "pskcoolking@gmail.com"
  def tellfriend(contact)
    url="http://minetoo12.heroku.com/"
    mail(:to=>contact[:email], :subject=>"Welcome to Minetoo", :body=>"Your Friend "+contact[:your_name]+" ["+contact[:your_email]+"]"+" invites you to MineToo. Click the link to enter the application "+url)
  end
  
  def contactadmin(contact)
       mail(:to=>contact[:to], :subject=>contact[:subject], :body=>contact[:message])
  end
  def sendpassword(email,password)
       mail(:to=>email, :subject=>"MineToo Username & Password", :body=>"Welcome to Minetoo. Your MineToo user name : "+email+" and password : "+password)
  end
end
