class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets       
  validates :nickname, presence: true
  validates :like_num, numericality: {only_integer: true,greater_than: 0, less_than: 8}

end
