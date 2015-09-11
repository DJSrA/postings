class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer, nul: false, default: 0
  end
end
