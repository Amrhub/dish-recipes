class User < ApplicationRecord
  has_many :inventories
  has_many :recipes
  has_many :foods
end
