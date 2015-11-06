class AddAboutToUsers < ActiveRecord::Migration
  def self.up
  	add_column :users, :about, :string
  end
end
