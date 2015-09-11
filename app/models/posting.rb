class Posting < ActiveRecord::Base
  belongs_to :user
  belongs_to :companies
  has_many :interests
  has_many :candidates, through: :interests
end