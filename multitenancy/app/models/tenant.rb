class Tenant < ApplicationRecord
  validates :name, presence: true
  has_many :members
  has_many :users, through: :members, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :articles, dependent: :destroy
end
