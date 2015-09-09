class AddRecruiterRefToCompany < ActiveRecord::Migration
  def change
    add_reference :companies, :recruiter, index: true, foreign_key: true
  end
end
