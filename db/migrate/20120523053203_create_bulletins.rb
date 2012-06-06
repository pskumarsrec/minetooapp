class CreateBulletins < ActiveRecord::Migration
  def self.up
    create_table :bulletins do |t|
	t.integer :sender
	t.text :message
	t.date :birth_date
	t.timestamps
    end
  end

  def self.down
    drop_table :bulletins
  end
end
