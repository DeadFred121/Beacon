class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :region
  belongs_to :platform
  mount_uploader :avatar, AvatarUploader
end
