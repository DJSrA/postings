class AddAvatarToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :avatar, :string
  end
end
