class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :registerable, :trackable,
  # :recoverable, :validatable, :omniauthable
  devise :database_authenticatable, :rememberable, :validatable

  validates :username, presence: true
end
