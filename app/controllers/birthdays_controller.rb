class BirthdaysController < ApplicationController

   #Filter for authentication  
   before_filter :authenticate_user!
	
  #Show user profile
  def showprofile
	@profile=User.find_by_id(params[:id]) 
	redirect_to "/notfound" if @profile.blank?
  end

  #Action for search Exact birthday
  def birthday
	  @dob=current_user.date_of_birth
	  @dat=@dob.ctime
	  @date=@dat.split(' ')		
	  @dateofbirth=@date[2]+" "+@date[1]+" "+@date[4]
	  @user=User.find_all_by_date_of_birth(@dob)
  end
  
  #Search page for younger or older
  def birthdaysearch
  end

  #Search function for younger or older
  def search
	dob=current_user.date_of_birth
	start_date=Date.civil(dob.year+params[:search][:younger].to_i,dob.month,dob.day)
	end_date=Date.civil(dob.year-params[:search][:older].to_i,dob.month,dob.day)
	@user=User.where(["(date_of_birth <= ? and date_of_birth>=?)",start_date,end_date])
  end
end
