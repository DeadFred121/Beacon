class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :flares, dependent: :destroy
  has_one :profile, dependent: :destroy
  before_create :create_profile


  private

  def create_profile
    profile = Profile.new
  end
end
