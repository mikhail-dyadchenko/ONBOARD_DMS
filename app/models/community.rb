class Community < ApplicationRecord
  belongs_to :category
  has_many :posts
  has_many :users
  has_many :tags
end
