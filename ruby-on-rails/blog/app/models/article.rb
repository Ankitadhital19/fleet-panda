class Article < ApplicationRecord
  include Visible

  has_many :comments
  # has_many :articles
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  belongs_to :user
end
