class Interest < ActiveRecord::Base
  belongs_to :candidate, foreign_key: :user_id
  belongs_to :posting
end
