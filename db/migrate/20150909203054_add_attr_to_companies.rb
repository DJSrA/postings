class AddAttrToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :function, :string
    add_column :companies, :industry, :string
    add_column :companies, :region, :string
    add_column :companies, :market_cap, :string
    add_column :companies, :ownership, :string
  end
end
