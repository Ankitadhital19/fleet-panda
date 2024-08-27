class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :members
  has_many :articles
  has_many :tenants, through: :members
  has_many :comments, dependent: :destroy
  validates :first_name, :last_name, presence: true
  has_one_attached :avatar

  def full_name
    "#{first_name} #{last_name}"
  end
end
