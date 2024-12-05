class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :tags

  validates :body, presence: true
  validates :title, presence: true, length: { minimum: 5 }
end
