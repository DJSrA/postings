class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.references :recruiter, index: true, foreign_key: true
      t.references :companies, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
