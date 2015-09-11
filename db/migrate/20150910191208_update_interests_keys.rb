class UpdateInterestsKeys < ActiveRecord::Migration
  def change
    rename_column :interests, :candidates_id, :candidate_id
    rename_column :interests, :postings_id, :posting_id
  end
end
