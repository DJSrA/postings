class ChangeRecruitersToUsers < ActiveRecord::Migration
  def change
    rename_table('recruiters', 'users')
  end
end
