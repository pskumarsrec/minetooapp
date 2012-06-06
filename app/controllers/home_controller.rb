class HomeController < ApplicationController

  #Application home page
  def home
  end
  
  #Search action for birthday
  def homenotlogin
	  unless params[:date_of_birth].empty?
		@dob=params[:date_of_birth]
		@user=User.find_all_by_date_of_birth(@dob)	
	  else
			flash[:alert] = "Please select Date of birth"
			render :home
	  end
  end

  #User registration-profile
  def profile
        session[:value]=""
	session[:qualities]=""
  end

  #Action to store users profile details in sessions
  def profilesession
	@a=User.find_by_email(params[:user][:email])
	if @a.present?
		flash[:alert] = "Email already taken"
		redirect_to "/signupprofile"
	else
		session[:value]={:name=>params[:user][:name], :date_of_birth=>params[:date_of_birth], :email=>params[:user][:email], :sex=>params[:user][:sex], :hour_of_birth=>params[:user][:hour_of_birth], :living_city=>params[:user][:living_city], :living_country=>params[:user][:living_country], :born_city=>params[:user][:born_city], :born_country=>params[:user][:born_country]}
		redirect_to "/signupquality"
	end
  end

  #User registration-quality
  def quality
	  redirect_to "/signupprofile" if session[:value].empty?
	  @quality=["considerate","boisterous","wise","relaxed","forward-looking","intense","indecisive","strong","grounded","emotional","demonstratitve","witty","unaffected","inscrutable","mercurial"]
  end
  
  #Action to store users quality details in sessions
  def sessions
	session[:qualities]=Array.new
	if params[:user].present?
	params[:user].values.each do |a|
		session[:qualities]<<a     
	end
	end
	len=session[:qualities].length
	if len>=4 and len<=10
		redirect_to :controller=>"registrations", :action=>"new" 
	else
		flash[:alert] = "Must select 4 to 10 qualities"
		redirect_to "/signupquality"
	end
  end
   
end
