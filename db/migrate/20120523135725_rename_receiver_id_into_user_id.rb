class RenameReceiverIdIntoUserId < ActiveRecord::Migration
  def self.up
  rename_column :messages, :sender, :user_id
  end

  def self.down
  rename_column :messages, :user_id, :sender
  end
end
