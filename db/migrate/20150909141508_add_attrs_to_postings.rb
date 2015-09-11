class AddAttrsToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :headline, :string
    add_column :postings, :description, :text
    add_column :postings, :job_type, :string
    add_column :postings, :industry, :string
    add_column :postings, :region, :string
    add_column :postings, :market_cap, :string
    add_column :postings, :ownership, :string
  end
end
