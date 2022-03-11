class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods
  has_one_attached :image
  accepts_nested_attributes_for :recipe_foods, allow_destroy: true
end
