class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :region
  belongs_to :platform
  mount_uploader :avatar, AvatarUploader

  def display_name
    if name.nil? || name.empty?
      user.email
    else
      name
    end
  end
end
