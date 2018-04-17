class Item < ApplicationRecord
  RARITIES = %w[common uncommon rare epic legendary artifact].freeze

  # Validations
  validates :name, :icon, :kind, :rarity, :value, presence: true
  validates :rarity, inclusion: { in: RARITIES }
end
