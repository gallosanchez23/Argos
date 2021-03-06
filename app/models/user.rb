class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :registerable, :trackable,
  # :recoverable, :validatable, :omniauthable
  devise :database_authenticatable, :rememberable, :validatable

  validates :username,
            presence: true,
            uniqueness: true

  has_many :accounts

  def email_required?
    false
  end

  def will_save_change_to_email?
    false
  end
end
