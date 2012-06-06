class Message < ActiveRecord::Base
	belongs_to :user	
	validates_presence_of  :message, :user_id, :receiver
end
