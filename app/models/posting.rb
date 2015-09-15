class Posting < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  belongs_to :user
  belongs_to :company
  has_many :interests
  has_many :users, through: :interests
end