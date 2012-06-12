class AuthenticationsController < ApplicationController
  def create
	auth=request.env["omniauth.auth"]
	$email=auth['info']['email'] 
	puts "111111111111111111111111111111"
	puts $email
	puts "111111111111111111111111111111"
	$name=auth['info']['name'] 
	user=User.find_by_email($email)
	if user
		puts "Already registered"
		sign_in :user, user
		redirect_to "/home"
	else
		puts "New register"
		redirect_to "/authentications/edit"
		
	end
  end

  def edit
	
  end
  
  def update
	
	user = User.new
	user.email=$email
	user.name=$name
	user.password=params[:user][:password]
	user.date_of_birth=params[:date_of_birth]
	user.born_city=params[:user][:born_city]
	user.born_country=params[:user][:born_country]
	user.hour_of_birth=params[:user][:hour_of_birth]
	user.qualities=["considerate","boisterous","wise","relaxed"]
	user.living_city=params[:user][:living_city]
	user.living_country=params[:user][:living_country]
	user.sex=params[:user][:sex]
	user.biography=params[:user][:biography]
	user.save!(:validate=>false)
	user.confirm!
	sign_in :user, user
	redirect_to "/home"
  end

end




