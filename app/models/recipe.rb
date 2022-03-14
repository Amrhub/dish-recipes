class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_one_attached :image, dependent: :destroy
  accepts_nested_attributes_for :recipe_foods, allow_destroy: true
  after_save :update_preparation_cooking_time

  private

  def update_preparation_cooking_time
    preparation_time_hours = self.preparation_time_hours.to_f
    preparation_time_minutes = self.preparation_time_minutes.to_f / 60
    cooking_time_hours = self.cooking_time_hours.to_f
    cooking_time_minutes = self.cooking_time_minutes.to_f / 60

    preparation_time = preparation_time_hours + preparation_time_minutes
    cooking_time = cooking_time_hours + cooking_time_minutes
    update_columns(preparation_time:, cooking_time:)
  end
end
