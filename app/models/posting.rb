class Posting < ActiveRecord::Base
  belongs_to :recruiter
  belongs_to :companies
end
