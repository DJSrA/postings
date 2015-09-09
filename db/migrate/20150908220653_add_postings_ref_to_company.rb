class AddPostingsRefToCompany < ActiveRecord::Migration
  def change
    add_reference :companies, :postings, index: true, foreign_key: true
  end
end
