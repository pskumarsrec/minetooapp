class StaticController < ApplicationController
	
  #Action for About page
  def about
  end

  #Action for Frequantly asked questions page
  def faq
  end

  #Action for contact admin page
  def admincontact
  end
  
  #Action to contact admin
  def adminmail
	  @contact=params[:mail]
	  Sendmail.contactadmin(@contact).deliver
  end

  #Action for contact minetoo page
  def contactus
  end

  #Action for Thoughts page
  def thoughts
  end

  #Action for Birthday paradox page
  def paradox
  end

  #Action for Terms and condition page
  def terms
    render :layout => false
  end  

  #Action for Logout Successful page
  def logoutsuccess
  end
  
  #Action for Not found page
  def notfound
	   render :layout => false
  end

end
