class Company < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_and_belongs_to_many :users
  has_many :postings


end
