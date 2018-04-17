class Item < ApplicationRecord
  # Validations
  validates :name, :icon, :kind, :value, presence: true
end
