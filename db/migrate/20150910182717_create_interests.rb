class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :postings_id
      t.integer :candidates_id

      t.timestamps null: false
    end
  end
end
