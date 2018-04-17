FactoryBot.define do
  factory :item do
    name 'Iron Sword'
    icon 'icon.jpg'
    kind 'weapon'
    value 100
    stackable false
  end
end
