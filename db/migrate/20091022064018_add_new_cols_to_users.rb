class AddNewColsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string
    add_column :users, :cell_phone, :string
    add_column :users, :home_phone, :string
    add_column :users, :work_phone, :string
  end

  def self.down
  end
end
