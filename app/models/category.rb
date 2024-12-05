class Category < ApplicationRecord
  has_many :comminities
  has_many :posts
end
