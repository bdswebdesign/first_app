class CreateScouts < ActiveRecord::Migration
  def self.up
    create_table :scouts do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :scouts
  end
end
