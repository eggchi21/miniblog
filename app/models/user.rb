class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum training: {benchipress: 0, deadlift: 1, squat:2}
  has_many :tweets
  validates :nickname, presence: true
  mount_uploader :image, ImageUploader
end
