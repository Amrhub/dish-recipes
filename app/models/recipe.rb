class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_one_attached :image, dependent: :destroy
  accepts_nested_attributes_for :recipe_foods, allow_destroy: true
end
