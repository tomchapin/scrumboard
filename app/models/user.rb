class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  has_secure_password

  has_many :posts

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, email: true, presence: true, uniqueness: true

end
