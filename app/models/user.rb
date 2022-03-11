class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :inventories
  has_many :recipes
  has_many :foods

  Roles = [ :admin , :default ]

  def is?(requested_role)
    self.role == requested_role.to_s
  end
end
