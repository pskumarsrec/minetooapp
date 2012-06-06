class AddUsers < ActiveRecord::Migration
  def self.up
	  add_column :users, :date_of_birth, :date
	  add_column :users, :name, :string
	  add_column :users, :sex, :string
	  add_column :users, :hour_of_birth, :string
	  add_column :users, :living_city, :string
	  add_column :users, :living_country, :string
	  add_column :users, :born_city, :string
	  add_column :users, :born_country, :string
	  add_column :users, :qualities, :string
	  add_column :users, :biography, :text
	  add_column :users, :new_member_notification, :string
	  add_column :users, :private_message_notification, :string
	  add_column :users, :offers_notification, :string
  end
  def self.down
	  remove_column :users, :date_of_birth
	  remove_column :users, :name
	  remove_column :users, :sex
	  remove_column :users, :hour_of_birth
	  remove_column :users, :living_city
	  remove_column :users, :living_country
	  remove_column :users, :born_city
	  remove_column :users, :born_country
	  remove_column :users, :qualities
	  remove_column :users, :biography
	  remove_column :users, :new_member_notification
	  remove_column :users, :private_message_notification
	  remove_column :users, :offers_notification
  end
end
