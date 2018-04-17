class Item < ApplicationRecord
  RARITIES = %i(common uncommon rare epic legendary artifact).freeze

  # Validations
  validates :name, :icon, :kind, :value, presence: true

  def rarity
    RARITIES.sample
  end
end
