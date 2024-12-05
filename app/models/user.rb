class User < ApplicationRecord
  has_secure_password

  has_many :posts
  has_many :comments
  has_many :communities
  has_one :email
  validates :email, presence: true, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
