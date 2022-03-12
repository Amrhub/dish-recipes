class User < ApplicationRecord
  # rubocop:disable all
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :inventories
  has_many :recipes
  has_many :foods

  Roles = %i[admin default].freeze

  def is?(requested_role)
    role == requested_role.to_s
  end
end
