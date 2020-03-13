class Post < ApplicationRecord
  validates :content, presence: true, length: { maximum: 500 }
  validates :title, presence: true, length: { maximum: 100 }, uniqueness: { case_sensitive: false }
  belongs_to :user
  has_many :comments
end
