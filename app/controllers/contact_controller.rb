class ContactController < ApplicationController
	
   #Filter for authentication  
   before_filter :authenticate_user!, :except => [:tellfriend, :invite]
	
  #Contact preference page
  def contact
  end
  
  #Update contact preference
  def updatecontact
	@user=User.find(current_user.id)
	@user.update_attributes(params[:user])
	redirect_to edit_user_registration_path
  end

  #Myself update page
  def myself
  end

  #Action for update user profile
  def myselfupdate
	@user=User.find(current_user.id)
	@result=@user.update_attributes(params[:user])
	if @result
	else
		render:myself
	end
  end

  #Invite friend oage
  def tellfriend
  end

  #Action for invite friend
  def invite
	  @contact=params[:tell]
	  Sendmail.tellfriend(@contact).deliver
  end

end
