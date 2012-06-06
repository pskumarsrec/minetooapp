class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
	devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable

	#relationship between models
	has_many :messages
	has_many :bulletins
	
	#serialize the qualities field
	serialize :qualities
	# Setup accessible (or protected) attributes for your model
	attr_accessible :email, :password, :password_confirmation, :date_of_birth, :name, :sex , :hour_of_birth, :living_city, :living_country, :born_city, :born_country, :qualities, :biography, :new_member_notification, :private_message_notification, :offers_notification
	
	#Model validations
	validates_presence_of  :name, :email, :sex, :hour_of_birth, :living_city, :living_country, :born_city, :born_country, :biography
end
