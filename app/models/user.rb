class User < ApplicationRecord
  has_many :user_coins
  has_many :coins, through: :user_coins
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
