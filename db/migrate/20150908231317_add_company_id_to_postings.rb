class AddCompanyIdToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :company_id, :integer
  end
end
