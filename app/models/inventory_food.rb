class InventoryFood < ApplicationRecord
  belongs_to :user
  belongs_to :food
  belongs_to :inventory
end
