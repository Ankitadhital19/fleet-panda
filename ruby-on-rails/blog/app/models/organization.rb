class Organization < ApplicationRecord
  has_many :users
  belongs_to :organization
  validates :name, presence: true, uniqueness: true
end
