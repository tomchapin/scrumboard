class User < ActiveRecord::Base
  has_secure_password

  has_many :posts

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, email: true, presence: true, uniqueness: true

end
