class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :region
  belongs_to :platform
end
