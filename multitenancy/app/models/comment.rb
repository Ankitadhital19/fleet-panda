class Comment < ApplicationRecord
  belongs_to :user, optional: true
  # belongs_to :post, optional: true
  belongs_to :tenant
  validates :content, presence: true
end
