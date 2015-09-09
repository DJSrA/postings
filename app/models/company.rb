class Company < ActiveRecord::Base
  belongs_to :recruiter
  has_many :postings

end
