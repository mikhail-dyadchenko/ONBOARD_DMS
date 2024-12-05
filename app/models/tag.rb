class Tag < ApplicationRecord
  has_many :communities
  has_many :posts
end
