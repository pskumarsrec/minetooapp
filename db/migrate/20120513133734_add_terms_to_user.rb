class AddTermsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :term_condition, :string
  end

  def self.down
    remove_column :users, :term_condition
  end
end
