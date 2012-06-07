class BulletinsController < ApplicationController
	
	#Filter for authentication
	before_filter :authenticate_user!
	
	#Action new bulletin message
	def sendbulletin
		@mesg= Bulletin.new
	end
	
	#Action to find bulletin message for particular user's date of birth
	def find
		@mesg=Bulletin.all(:conditions => ["birth_date = ?", current_user.date_of_birth], :order => "created_at DESC")
		if @mesg.present?
			@sender=Array.new
			@mesg.each do |send|
				@sender<<User.find_by_id(send.user_id).name
			end
		end
	end
	
	#Action for post bulletin message
	def sendmessage
		@msg= Bulletin.new(params[:message])
		unless params[:message][:message].empty?
			if @msg.save
				redirect_to "/aftersendbulletin"
			else
				flash[:alert] = "Empty message not allowed"
				render :sendbulletin
			end
		end
	end
	
	#Action for after post bulletin message
	def aftersendbulletin
		find
	end
	
	#Action for show bulletin message
	def showbulletin
		find
	end
	
	
end
