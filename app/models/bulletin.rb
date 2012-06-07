class Bulletin < ActiveRecord::Base
	belongs_to  :user
	validates_presence_of  :message, :receiver
end
