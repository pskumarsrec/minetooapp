class RenameBulletinSenderToUserId < ActiveRecord::Migration
  def self.up
  rename_column :bulletins, :sender, :user_id
  end

  def self.down
  rename_column :bulletins, :user_id, :sender
  end
end
