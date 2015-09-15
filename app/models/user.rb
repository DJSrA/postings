class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :companies
  has_many :interests, foreign_key: :candidate_id
  has_many :candidate_postings, class_name: "Posting", through: :interests
  has_many :recruiter_postings, class_name: "Posting", foreign_key: :recruiter_id
  enum role: [:candidate, :recruiter, :admin]

  def to_s
  "#{email}"
  end
end
