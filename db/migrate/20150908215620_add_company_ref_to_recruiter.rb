class AddCompanyRefToRecruiter < ActiveRecord::Migration
  def change
    add_reference :recruiters, :company, index: true, foreign_key: true
  end
end
